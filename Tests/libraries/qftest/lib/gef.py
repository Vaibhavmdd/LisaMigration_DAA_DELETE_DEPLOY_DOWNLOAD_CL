# @author QFS

import jarray
import string
from java.lang import Boolean
from de.qfs.lib.util import Reflector, Misc, Pair
from de.qfs.apps.qftest.shared.data import SubItemIndex
from de.qfs.apps.qftest.shared.data.check import StringCheckData, BooleanCheckData, GeometryCheckData
from de.qfs.apps.qftest.extensions import ResolverRegistry
from de.qfs.apps.qftest.extensions.items import ItemRegistry, ItemResolver
from de.qfs.apps.qftest.extensions.checks import CheckerRegistry, Checker, CheckType, CheckDataType

# {{{ constants

STRING = 0
NUMBER = 1
REGEXP = 2
INTELLIGENT = 1
AS_STRING = 2
AS_NUMBER = 3
PATHSEP = "/"
QUOTE_STD = "\\#@&%"
QUOTE_SEP = QUOTE_STD + PATHSEP

SELECTED = 1
SELECTED_PRIMARY = 2

# }}}

# {{{ getGefEditor

def getGefEditor(shell):
    wbw = shell.getData()
    pages = wbw.getPages()
    for i in range(len(pages)):
        wbp = pages[i]
        editor = wbp.getActiveEditor() 
        if editor != None:
            if ResolverRegistry.isInstance(editor, "org.eclipse.ui.part.MultiPageEditorPart"):
                editor = Reflector.call(editor, "getActiveEditor", 1)
            return editor
    return None

# }}}
# {{{ getShell

def getShell(com):
    while com != None:
        if ResolverRegistry.isInstance(com, "org.eclipse.swt.widgets.Shell"):
            break
        com = com.getParent()
    return com

# }}}
# {{{ intarray

def intarray(*args):
    return jarray.array(args, 'i')

# }}}

class CheckTypeEx(CheckType):
    # {{{ __init__

    def __init__(self, identifier, datatype):
        self._identifier = identifier
        self._datatype = datatype

    # }}}
    # {{{ getIdentifier

    def getIdentifier(self):
        return self._identifier

    # }}}
    # {{{ getDescription

    def getDescription(self):
        s = self.getIdentifier()
        s = string.upper(s[0]) + s[1:]
        s = string.replace(s, "_", " ")
        return s

    # }}}
    # {{{ getDataType

    def getDataType(self):
        return self._datatype

    # }}}

# {{{ CheckTypes

ObjectValueCheckType = CheckTypeEx("object_value", CheckDataType.STRING)
ObjectSelectedCheckType = CheckTypeEx("object_selected", CheckDataType.BOOLEAN)
ObjectGeometryCheckType = CheckTypeEx("object_geometry", CheckDataType.GEOMETRY)

# }}}

class GefResolver(ItemResolver, Checker):
    # {{{ __init__
    
    def __init__(self):
        self.__graphicalViewer = None
        self.__paletteViewer = None

    # }}}
    # --------------------------------------------------------------------------------------------
    # ItemResolver interface
    # --------------------------------------------------------------------------------------------
    # {{{ getItem

    def getItem(self, figureCanvas, x, y=None):
        if y is None:
            return self.getItemForIndex(figureCanvas, x)
        viewer = self._getViewer(figureCanvas)
        viewport = figureCanvas.getViewport()
        xoff = viewport.getHorizontalRangeModel().getValue()
        yoff = viewport.getVerticalRangeModel().getValue()
        Point = viewer.__class__.getClassLoader().loadClass("org.eclipse.draw2d.geometry.Point")
        p = Point(x - xoff, y - yoff)
        editPart = viewer.findObjectAt(p)
        return editPart

    # }}}
    # {{{ getItemValue

    def getItemValue(self, figureCanvas, item):
        value = ItemRegistry.instance().resolveItemValue(figureCanvas, item)
        if value == None:
            value = str(item.getModel())
        return value

    # }}}
    # {{{ getItemForIndex

    def getItemForIndex(self, figureCanvas, idx):
        item = self._getConnectionItemForIndex(figureCanvas, idx)
        if item != None:
            return item

        path = []
        tPath = idx[0].getIndex()
        pos = 0
        while pos >= 0:
            pos2 = Misc.unquotedIndexOf(tPath, PATHSEP, pos + 1)
            if pos2 > pos:
                index = Misc.unquote(tPath[pos + 1:pos2], QUOTE_SEP)
            else:
                index = Misc.unquote(tPath[pos + 1:], QUOTE_SEP)
            pos = pos2
            path.append(SubItemIndex(index, idx[0].getType()))
        idx = path

        item = None
        for i in range(len(idx)):
            item = self._getSubItem(figureCanvas, item, idx[i])
        return item;

    # }}}
    # {{{ getItemIndex

    def getItemIndex(self, figureCanvas, item, type):
        if ResolverRegistry.isInstance(item, "org.eclipse.gef.editparts.AbstractConnectionEditPart"):
            idx = self._getConnectionItemIndex(figureCanvas, item, type)
            return idx
        try:
            path = self._getItemPath(figureCanvas, item, type)
            if type == INTELLIGENT:
                for i in range(len(path)):
                    if path[i].getType() == NUMBER:
                        path = self._getItemPath(figureCanvas, item, AS_NUMBER)
                        break
            sb = ""
            quote = path[0].getType() == STRING
            for i in range(len(path)):
                sb += PATHSEP
                if (quote):
                    sb += Misc.quote(path[i].getIndex(), QUOTE_SEP)
                else:
                    sb += path[i].getIndex()
            return jarray.array([SubItemIndex(sb, path[0].getType())], SubItemIndex)                    
        except:
            return None

    # }}}
    # {{{ getItemLocation

    def getItemLocation(self, figureCanvas, item):
        figure = item.getFigure()
        bounds = figure.getBounds().getCopy()
        figure.translateToAbsolute(bounds)
        viewport = figureCanvas.getViewport()
        xoff = viewport.getHorizontalRangeModel().getValue()
        yoff = viewport.getVerticalRangeModel().getValue()
        loc = intarray(bounds.x + xoff, bounds.y + yoff)
        return loc

    # }}}
    # {{{ getItemSize

    def getItemSize(self, figureCanvas, item):
        fig = item.getFigure()
        bounds = fig.getBounds()
        size = intarray(bounds.width, bounds.height)
        return size

    # }}}
    # {{{ repositionMouseEvent

    def repositionMouseEvent(self, figureCanvas, item, pos):
        pass

    # }}}
    # {{{ scrollItemVisible

    def scrollItemVisible(self, figureCanvas, item, x, y):
        """Return None to signal that default scrolling should take place."""
        return None

    # }}}
    # {{{ getItemCount

    def getItemCount(self, figureCanvas, item):
        """Currently unused."""
        return 0

    # }}}

    # --------------------------------------------------------------------------------------------
    # Checker interface
    # --------------------------------------------------------------------------------------------
    # {{{ supported check types

    # The supported check types for an item.
    itemTypes = jarray.array([ObjectValueCheckType, ObjectSelectedCheckType, ObjectGeometryCheckType], CheckTypeEx)

    # }}}
    # {{{ getSupportedCheckTypes

    def getSupportedCheckTypes(self, figureCanvas, item):
        if item is not None:
            return self.itemTypes
        return None

    # }}}
    # {{{ getCheckData

    def getCheckData(self, figureCanvas, item, checkType):
        if item is None:
            return None
        if ObjectValueCheckType.getIdentifier() == checkType.getIdentifier():
            return StringCheckData(self.getItemValue(figureCanvas, item))
        elif ObjectGeometryCheckType.getIdentifier() == checkType.getIdentifier():
            pos = self.getItemLocation(figureCanvas, item)
            size = self.getItemSize(figureCanvas, item)
            return GeometryCheckData(pos[0], pos[1], size[0], size[1])
        elif ObjectSelectedCheckType.getIdentifier() == checkType.getIdentifier():
            selected = (item.getSelected() == SELECTED or item.getSelected() == SELECTED_PRIMARY)
            return BooleanCheckData(checkType.getIdentifier(), selected)
        else:
            return None

    #}}}
    # {{{ getCheckDataAndItem

    def getCheckDataAndItem(self, figureCanvas, item, checkType):
        data = self.getCheckData(figureCanvas, item, checkType)
        if data is None:
            return None
        return Pair(data, item)

    #}}}

    # --------------------------------------------------------------------------------------------
    # Helper
    # --------------------------------------------------------------------------------------------
    # {{{ _getGraphicalViewer
    
    def _getGraphicalViewer(self, figureCanvas):
        graphicalViewer = None
        try:
            shell = getShell(figureCanvas)
            editorPart = getGefEditor(shell)
            try:
                # com.tibco.xpd.processeditor.xpdl2.ProcessDiagramEditor
                processWidget = Reflector.call(editorPart, "getProcessWidget", 1)
                editorPart = processWidget  
            except:
                pass
            graphicalViewer = Reflector.call(editorPart, "getGraphicalViewer", 1)
        except:
            pass
        return graphicalViewer
    
    # }}}
    # {{{ _getFlyoutPaletteComposite
    
    def _getFlyoutPaletteComposite(self, figureCanvas):
        fpc = None
        parent = figureCanvas.getParent()
        while (parent != None):
            if ResolverRegistry.isInstance(parent, "org.eclipse.gef.ui.palette.FlyoutPaletteComposite"):
                fpc = parent
                break
            parent = parent.getParent()
        return fpc
    
    # }}}
    # {{{ _getPaletteViewer
            
    def _getPaletteViewer(self, figureCanvas):
        paletteViewer = None
        try:
            fpc = self._getFlyoutPaletteComposite(figureCanvas)
            if (fpc != None):
                paletteViewer = Reflector.get(fpc, "pViewer", 1)
                if paletteViewer == None:
                    paletteViewer = Reflector.get(fpc, "externalViewer", 1)
            else:
                shell = getShell(figureCanvas)
                editorPart = getGefEditor(shell)
                editDomain = Reflector.get(editorPart, "editDomain", 1)
                paletteViewer = editDomain.getPaletteViewer()
        except:
            pass
        if paletteViewer == None:
            paletteViewer = self._getPaletteViewerInView(figureCanvas)
        return paletteViewer

    # }}}
    # {{{ _getPaletteViewerInView
    
    def _getPaletteViewerInView(self, figureCanvas):
        shell = getShell(figureCanvas)
        wbw = shell.getData()
        pages = wbw.getPages()
        for i in range(len(pages)):
            wbp = pages[i]
            for v in wbp.getViews():
                flds = v.getClass().getDeclaredFields()
                for f in flds:
                    if str(f.getType()) == "org.eclipse.gef.ui.palette.PaletteViewer":
                        return Reflector.get(v, f.getName(), 1)
        return None
                    
    # }}}
    # {{{ _getViewer
    
    def _getViewer(self, figureCanvas):
        if self.__graphicalViewer == None:
            self.__graphicalViewer = self._getGraphicalViewer(figureCanvas)
        if self.__paletteViewer == None:
            self.__paletteViewer = self._getPaletteViewer(figureCanvas)
        if self.__graphicalViewer != None and figureCanvas == self.__graphicalViewer.getControl(): 
            return self.__graphicalViewer
        elif self.__paletteViewer != None and figureCanvas == self.__paletteViewer.getControl():  
            return self.__paletteViewer
        else:
            return None
        
    # }}}
    # {{{ _getRootEditPart
    
    def _getRootEditPart(self, figureCanvas):
        if self.__graphicalViewer == None:
            self.__graphicalViewer = self._getGraphicalViewer(figureCanvas)
        if self.__paletteViewer == None:
            self.__paletteViewer = self._getPaletteViewer(figureCanvas)
        if self.__graphicalViewer != None and \
                figureCanvas == Reflector.call(self.__graphicalViewer, "getFigureCanvas", 1):
            viewer = self.__graphicalViewer
            return viewer.getContents()
        elif self.__paletteViewer != None and \
                figureCanvas == Reflector.call(self.__paletteViewer, "getFigureCanvas", 1):
            viewer = self.__paletteViewer
            paletteRoot = viewer.getPaletteRoot()
            return viewer.getEditPartRegistry().get(paletteRoot)
        else:
            return None

    # }}}
    # {{{ _getItemName
    
    def _getItemName(self, figureCanvas, item):
        name = ItemRegistry.instance().getItemName(figureCanvas, item)
        if name == None:
            name = str(item.getModel())
        return name

    # }}}
    # {{{ _getItemPath
    
    def _getItemPath(self, figureCanvas, item, type):
        items = []
        pIdx = None
        rootEditPart = self._getRootEditPart(figureCanvas)
        if item == rootEditPart:
            items = rootEditPart.getParent().getChildren()
        else:
            items = item.getParent().getChildren()
            pIdx = self._getItemPath(figureCanvas, item.getParent(), type)
        name = self._getItemName(figureCanvas, item)
        if type == INTELLIGENT:
            unique = 1
        else:
            unique = 0
        idx = -1
        for i in range(len(items)):
            if (items[i] == item):
                idx = i;
                if not unique:
                    break
            elif (not ((name == None) or (len(name) == 0))) \
                    and name == self._getItemName(figureCanvas, items[i]):
                unique = 0
                if idx >= 0:
                    break
        itemType = type;
        if type == INTELLIGENT:
            if unique:
                itemType = AS_STRING
            else:
                itemType = AS_NUMBER
        if itemType == AS_STRING:
            tIdx = SubItemIndex(name)
        else:
            tIdx = SubItemIndex(idx)
        if pIdx == None:
            ret = [tIdx]
        else:
            ret = list(pIdx)
            ret.append(tIdx)
        return jarray.array(ret, SubItemIndex)

    # }}}
    # {{{ _getConnections

    def _getConnections(self, figureCanvas):
        rootEditPart = self._getRootEditPart(figureCanvas)
        connections = []
        self._findEditPartConnections(rootEditPart, connections)
        return connections

    # }}}
    # {{{ _findEditPartConnections

    def _findEditPartConnections(self, node, connections):
        conns = node.getSourceConnections()
        for conn in conns:
            if not (conn in connections):
                connections.append(conn)
        conns = node.getTargetConnections()
        for conn in conns:
            if not (conn in connections):
                connections.append(conn)
        children = node.getChildren()
        for c in children:
            self._findEditPartConnections(c, connections)
    # }}}
    # {{{ _getSubItem

    def _getSubItem(self, figureCanvas, parent, idx):
        num = -1
        if parent == None:
            parent = self._getRootEditPart(figureCanvas).getParent()
        items = parent.getChildren()
        if idx.getType() == NUMBER:
            num = idx.asNumber()
        else:
            for i in range(len(items)):
                index = Misc.unquote(idx.getIndex(), QUOTE_SEP)
                idx = SubItemIndex(index, idx.getType())
                if idx.matches(self._getItemName(figureCanvas, items[i])):
                    num = i
                    break
        if (num < 0) or (num >= len(items)):
            raise IndexNotFoundException(idx)
        return items[num]

    # }}}
    # {{{ _getConnectionItemIndex

    def _getConnectionItemIndex(self, figureCanvas, item, type):
        connections = self._getConnections(figureCanvas)
        for i in range(len(connections)):
            if item == connections[i]:
                if type == INTELLIGENT:
                    name = self._getItemName(figureCanvas, item)
                    name = Misc.quote(name, QUOTE_SEP)
                    return jarray.array([SubItemIndex(name)], SubItemIndex)
                else:
                    return jarray.array([SubItemIndex(i)], SubItemIndex)
        return None

    # }}}
    # {{{ _getConnectionItemForIndex

    def _getConnectionItemForIndex(self, figureCanvas, idx):
        connections = self._getConnections(figureCanvas)
        num = -1
        idx = idx[0]
        if idx.getType() == NUMBER:
            try:
                num = idx.asNumber()
            except:
                return None
        else:
            for i in range(len(connections)):
                index = Misc.unquote(idx.getIndex(), QUOTE_SEP)
                idx = SubItemIndex(index, idx.getType())
                if idx.matches(self._getItemName(figureCanvas, connections[i])):
                    num = i
                    break
        if (num < 0) or (num >= len(connections)):
            return None
        return connections[num]

    # }}}

global gefResolver

try:
    ItemRegistry.instance().unregisterItemResolvers("org.eclipse.draw2d.FigureCanvas")
    CheckerRegistry.instance().unregisterCheckers("org.eclipse.draw2d.FigureCanvas")
except:
    pass

print "Initializing gef.py"
gefResolver = GefResolver()
ItemRegistry.instance().registerItemResolver("org.eclipse.draw2d.FigureCanvas", gefResolver)
CheckerRegistry.instance().registerChecker("org.eclipse.draw2d.FigureCanvas", gefResolver)
