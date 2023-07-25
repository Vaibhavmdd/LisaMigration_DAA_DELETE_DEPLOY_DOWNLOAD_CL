from de.qfs.apps.qftest.extensions import ResolverRegistry

from de.qfs.apps.qftest.extensions.items import ItemRegistry, ItemNameResolver, ItemValueResolver

from de.qfs.lib.util import Reflector



# {{{ constants

FLOW_START = 0
FLOW_INTERMEDIATE = 1
FLOW_END = 2
EVENT_TYPE = ["START_EVENT", "INTERMEDIATE_EVENT", "END_EVENT"]
# association type constants may need verification
ASSOCIATION_DIRECTION_TYPE_NONE=0
ASSOCIATION_DIRECTION_TYPE_TO_SOURCE=1
ASSOCIATION_DIRECTION_TYPE_TO_TARGET=2
ASSOCIATION_DIRECTION_TYPE_BOTH=3
ASSOCIATION_DIRECTION_TYPE = ["NONE", "TO_SOURCE", "TO_TARGET", "BOTH"]

# }}}



class GefTibcoItemNameResolver(ItemNameResolver):

    

    # {{{ __init__

    

    def __init__(self):

        pass



    # }}}

    # {{{ getItemName



    def getItemName(self, FigureCanvas, item):

        try:
			if ResolverRegistry.isInstance(item, "com.tibco.amf.tools.composite.editor.edit.parts.CompositeEditPart"):
				name = "DiagramRoot"
			if ResolverRegistry.isInstance(item, "com.tibco.amf.tools.composite.editor.edit.parts.ComponentEditPart"):
				name = "ComponentName:" + item.getModel().getElement().getName()
			if ResolverRegistry.isInstance(item, "com.tibco.amf.tools.composite.editor.edit.parts.Composite2EditPart"):
				name = "CompositeName:" + item.getModel().getElement().getName()
			if ResolverRegistry.isInstance(item, "com.tibco.amf.tools.composite.editor.edit.parts.CompositeComponentsCompartmentEditPart"):
				name = "ComponentCompartment"
			if ResolverRegistry.isInstance(item, "com.tibco.amf.tools.composite.editor.edit.parts.CompositeNameEditPart"):
				name = "CompositeNameEditpart "+item.getModel().getElement().getName()
			if ResolverRegistry.isInstance(item, "com.tibco.amf.tools.composite.editor.edit.parts.ComponentNameEditPart"):
				name = "ComponentNameEditpart "+item.getModel().getElement().getName()
			if ResolverRegistry.isInstance(item, "com.tibco.amf.tools.composite.editor.edit.parts.CompositeCompositeServicesCompartmentEditPart"):
				name = "CompositeServiceCompartment"
			if ResolverRegistry.isInstance(item, "com.tibco.amf.tools.composite.editor.edit.parts.CompositeCompositeReferencesCompartmentEditPart"):
				name = "CompositeReferenceCompartment"
			if ResolverRegistry.isInstance(item, "com.tibco.amf.tools.composite.editor.edit.parts.CompositeCompositePropertiesCompartmentEditPart"):
				name = "CompositePropertiesCompartment"
			if ResolverRegistry.isInstance(item, "com.tibco.amf.tools.composite.editor.edit.parts.ComponentComponentPropertiesCompartmentEditPart"):
				name = "ComponentPropertiesCompartment"
			if ResolverRegistry.isInstance(item, "com.tibco.amf.tools.composite.editor.edit.parts.PromotedServiceEditPart"):
				name = item.getModel().getElement().getName()			
			if ResolverRegistry.isInstance(item, "com.tibco.amf.tools.composite.editor.edit.parts.PromotedReferenceEditPart"):
				name = item.getModel().getElement().getName()
			if ResolverRegistry.isInstance(item, "com.tibco.amf.tools.composite.editor.edit.parts.PromotedServicePromotionEditPart"):
				name = item.getModel().getElement().getName()
			if ResolverRegistry.isInstance(item, "com.tibco.amf.tools.composite.editor.edit.parts.PromotedReferencePromotionEditPart"):
				name = item.getModel().getElement().getName()
			if ResolverRegistry.isInstance(item, "com.tibco.amf.tools.composite.editor.edit.parts.ComponentServiceEditPart") :
				name="ServiceName:"+item.getModel().getElement().getName()
			if ResolverRegistry.isInstance(item, "com.tibco.amf.tools.composite.editor.edit.parts.ComponentReferenceEditPart") :
				name="ReferenceName:"+item.getModel().getElement().getName()
			if ResolverRegistry.isInstance(item, "com.tibco.amf.tools.composite.editor.edit.parts.ComponentComponentServicesCompartmentEditPart") :
				name="ComponentServiceCompartment"
			if ResolverRegistry.isInstance(item, "com.tibco.amf.tools.composite.editor.edit.parts.ComponentComponentReferencesCompartmentEditPart") :
				name="ComponentReferenceCompartment"
			return name

        except:

            print "Class causing problems: ", item.getClass()
            return None

            #import traceback

            #traceback.print_exc()

        

    # }}}



global gefTibcoItemNameResolver 



try:

    ItemRegistry.instance().unregisterItemNameResolvers("org.eclipse.draw2d.FigureCanvas")

except:

    pass

gefTibcoItemNameResolver = GefTibcoItemNameResolver()

ItemRegistry.instance().registerItemNameResolver("org.eclipse.draw2d.FigureCanvas", gefTibcoItemNameResolver)

