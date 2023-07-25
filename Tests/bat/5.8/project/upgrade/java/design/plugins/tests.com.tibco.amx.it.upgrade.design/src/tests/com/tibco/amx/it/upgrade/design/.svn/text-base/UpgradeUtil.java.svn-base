package tests.com.tibco.amx.it.upgrade.design;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import junit.framework.TestCase;

import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.IncrementalProjectBuilder;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.PlatformUI;
import org.eclipse.wst.wsdl.PortType;

import com.tibco.amf.sca.componenttype.ComponentTypeActivator;
import com.tibco.amf.sca.componenttype.ComponentTypeService;
import com.tibco.amf.sca.componenttype.CompositeModelBuilder;
import com.tibco.amf.sca.componenttype.util.ComponentUtil;
import com.tibco.amf.sca.model.componenttype.Callback;
import com.tibco.amf.sca.model.componenttype.ComponentType;
import com.tibco.amf.sca.model.componenttype.ComponentTypeFactory;
import com.tibco.amf.sca.model.componenttype.Reference;
import com.tibco.amf.sca.model.componenttype.Service;
import com.tibco.amf.sca.model.composite.Component;
import com.tibco.amf.sca.model.composite.ComponentProperty;
import com.tibco.amf.sca.model.composite.ComponentReference;
import com.tibco.amf.sca.model.composite.ComponentService;
import com.tibco.amf.sca.model.composite.Composite;
import com.tibco.amf.sca.model.composite.CompositeFactory;
import com.tibco.amf.sca.model.composite.PromotedService;
import com.tibco.amf.sca.model.extensionpoints.Interface;
import com.tibco.amf.sca.model.extensionpoints.Property;
import com.tibco.amf.sca.model.extensionpoints.SCAExtensionsFactory;
import com.tibco.amf.sca.model.extensionpoints.Wsdl11Interface;
import com.tibco.amf.sca.model.implementationtype.java.JavaImplementation;
import com.tibco.amf.tools.composite.resources.ui.util.NewCompositeOperation;
import com.tibco.amf.tools.composite.resources.util.UnprotectedWriteOperation;
import com.tibco.amf.tools.packager.internal.WizardContextFactory;
import com.tibco.amf.tools.packager.internal.WizardContextFactory.MODE;
import com.tibco.amf.tools.packager.internal.plugin.FeatureProxy;
import com.tibco.amf.tools.packager.wizard.internal.IPackagerWizardContext;
import com.tibco.amf.tools.packager.wizard.internal.operations.NewDaaGenerationOperation;
import com.tibco.amx.it.upgrade.model.UpgradeImplementation;
import com.tibco.xpd.resources.WorkingCopy;
import com.tibco.xpd.resources.XpdResourcesPlugin;
import com.tibco.xpd.resources.indexer.IndexerItem;
import com.tibco.xpd.resources.indexer.IndexerItemImpl;
import com.tibco.xpd.resources.indexer.IndexerService;
import com.tibco.xpd.resources.projectconfig.ProjectConfig;
import com.tibco.xpd.resources.projectconfig.SpecialFolder;
import com.tibco.xpd.resources.projectconfig.SpecialFolders;
import com.tibco.xpd.ui.wizards.newproject.XpdProjectWizard;
import com.tibco.xpd.ui.wizards.newproject.XpdProjectWizard.CreateXpdProjectOperation;

public class UpgradeUtil {

    public static IProject createProject(String projectName) {

        closeEditors();

        // setup the project
        IWorkspace workspace = ResourcesPlugin.getWorkspace();
        IProject project = workspace.getRoot().getProject(projectName);

        final IProjectDescription description = workspace.newProjectDescription(project.getName());
        // description.setLocation(new Path(PROJECT_NAME));

        CreateXpdProjectOperation op = new XpdProjectWizard.CreateXpdProjectOperation(project, description, null);

        try {
            op.run(new NullProgressMonitor());
            return project;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static void removeProject(final String projectName) {
        final IWorkspace workspace = ResourcesPlugin.getWorkspace();
        try {
            workspace.run(new IWorkspaceRunnable() {
                public void run(IProgressMonitor monitor) throws CoreException {
                    IProject p = workspace.getRoot().getProject(projectName);
                    p.delete(true, true, new NullProgressMonitor());
                }

            }, null);
        } catch (CoreException e) {
            throw new RuntimeException(e);
        }
        closeEditors();
    }

    public static void closeEditors() {
        if (PlatformUI.isWorkbenchRunning()) {
            boolean closeAllEditors = PlatformUI.getWorkbench().getActiveWorkbenchWindow().getActivePage().closeAllEditors(false);
            TestCase.assertTrue("All editors should be closed", closeAllEditors);
        }
    }

    public static void configureSoaProject(IProject soaProject) {
        TestCase.assertTrue(soaProject != null && soaProject.exists());
        SpecialFolder compositeFolder = createSpecialFolder(soaProject, "Composites", "composite");
        TestCase.assertEquals(compositeFolder != null && compositeFolder.getFolder().exists(), true);
        SpecialFolder deploymentDescFolder = createSpecialFolder(soaProject, "Deployment", "deployArtifacts");
        TestCase.assertEquals(deploymentDescFolder != null && deploymentDescFolder.getFolder().exists(), true);
        SpecialFolder sharedResourcesFolder = createSpecialFolder(soaProject, "Shared Res", "sharedResource");
        TestCase.assertEquals(sharedResourcesFolder != null && sharedResourcesFolder.getFolder().exists(), true);
        SpecialFolder descriptorsFolder = createSpecialFolder(soaProject, "Descriptors", "wsdl");
        TestCase.assertEquals(descriptorsFolder != null && descriptorsFolder.getFolder().exists(), true);
    }

    public static SpecialFolder createSpecialFolder(IProject project, String folderName, String folderKind) {
        ProjectConfig pc = getProjectConfig(project);
        SpecialFolder sf;

        int count = pc.getSpecialFolders().getFoldersOfKind(folderKind).size();

        // create folder and mark it as a special folder
        final IFolder folder = project.getFolder(folderName);
        try {
            ResourcesPlugin.getWorkspace().run(new IWorkspaceRunnable() {
                public void run(IProgressMonitor monitor) throws CoreException {
                    folder.create(true, true, monitor);
                }
            }, null);
        } catch (CoreException e) {
            throw new RuntimeException(e);
        }
        waitForJobs();

        SpecialFolders sfs = pc.getSpecialFolders();
        sf = sfs.addFolder(folder, folderKind);
        TestCase.assertNotNull("Failed to create special folder", sf);

        // access this folder through project config
        List<SpecialFolder> sFolders = pc.getSpecialFolders().getFoldersOfKind(folderKind);

        TestCase.assertEquals("Number of special folders of kind " + folderKind, count + 1, sFolders.size());

        return sf;
    }

    public static ProjectConfig getProjectConfig(IProject project) {
        TestCase.assertNotNull("Project is null.", project);
        ProjectConfig pc = XpdResourcesPlugin.getDefault().getProjectConfig(project);
        TestCase.assertNotNull("Project Config is not avaiable", pc);
        return pc;
    }

    public static void waitForJobs() {
        waitForJobs(null);
    }

    /**
     * Wait until all background tasks are complete.
     */
    @SuppressWarnings("nls")
    public static void waitForJobs(Object family) {

        delay(1000);

        boolean waitForJob = true;

        for (int time = 0; waitForJob; time++) {
            Job[] checkJobs = Job.getJobManager().find(family);
            waitForJob = false;
            for (Job job2 : checkJobs) {
                if (job2.isUser()) {
                    if (job2.getState() != Job.NONE) {
                        waitForJob = true;
                        break;
                    }
                }
            }
            delay(1000);

            // after 5 minutes let the test fail

            if (time > 300) {
                TestCase.fail("Test waited for completion of all jobs. But there are still some running, waiting or sleeping Jobs");
            }
        }
    }

    public static void delay(long waitTimeMillis) {
        Display display = Display.getCurrent();

        // If this is the UI thread,
        // then process input.
        if (display != null) {
            long endTimeMillis = System.currentTimeMillis() + waitTimeMillis;
            while (System.currentTimeMillis() < endTimeMillis) {
                try {
                    if (!display.readAndDispatch()) {
                        display.sleep();
                    }
                } catch (Exception e) {
                    // ignore
                    e.printStackTrace();
                }
            }
            display.update();
        }
        // Otherwise, perform a simple sleep.
        else {
            try {
                Thread.sleep(waitTimeMillis);
            } catch (InterruptedException e) {
                // Ignored.
            }
        }
    }

    public static IFolder getCompositeFolder(IProject proj) {
        ProjectConfig pc = XpdResourcesPlugin.getDefault().getProjectConfig(proj);
        EList<SpecialFolder> servi = pc.getSpecialFolders().getFoldersOfKind("composite");
        return servi.get(0).getFolder();
    }

    public static Composite createComposite(IPath parent, String name) {
        NewCompositeOperation newCompositeOp1 = new NewCompositeOperation(null, parent, name + ".composite");
        Composite result = null;
        try {
            newCompositeOp1.run(null);
            IFile compositeFile = newCompositeOp1.getCreatedComposite();
            TestCase.assertNotNull(compositeFile);
            TestCase.assertEquals("Failed to create the composite file " + compositeFile.getFullPath(), compositeFile.exists(), true);

            result = loadComposite(compositeFile);
            TestCase.assertNotNull("Failed to load the composite file " + compositeFile.getFullPath(), result);

        } catch (InvocationTargetException e) {
            e.printStackTrace();
            TestCase.fail(e.getMessage());
        } catch (InterruptedException e) {
            e.printStackTrace();
            TestCase.fail(e.getMessage());
        }
        return result;
    }

    public static Composite loadComposite(IFile compositeFile) {
        if (compositeFile != null && compositeFile.exists()) {
            WorkingCopy workingCopy = XpdResourcesPlugin.getDefault().getWorkingCopy(compositeFile);
            EObject rootElement = workingCopy.getRootElement();
            return rootElement instanceof Composite ? (Composite) rootElement : null;
        }
        return null;
    }

    public static void closeWelcomePage() {
        if (PlatformUI.getWorkbench().getIntroManager().getIntro() != null) {
            PlatformUI.getWorkbench().getIntroManager().closeIntro(PlatformUI.getWorkbench().getIntroManager().getIntro());
        }
    }

    public static Component createITExampleComponent(final Composite composite, final String name) {

        UnprotectedWriteOperation op = new UnprotectedWriteOperation(XpdResourcesPlugin.getDefault().getEditingDomain()) {
            @Override
            protected Object doExecute() {
                CompositeModelBuilder modelBuilder = ComponentTypeActivator.getDefault().getModelBuilder();
                Component itComponent = modelBuilder.createComponent(composite, null);
                itComponent.setName(name);
                ComponentTypeService componentTypeService = ComponentTypeActivator.getDefault().getComponentTypeService();
                componentTypeService.configureDefaultComponent("implementation.Upgrade", itComponent);
                TestCase.assertEquals("The implementation object of the created component is not a example implementation", true, itComponent.getImplementation() instanceof UpgradeImplementation);
                return itComponent;
            }
        };
        return (Component) op.execute();
    }

    public static void configITComponent(final Component component, final IProject soaProject) {

        UnprotectedWriteOperation op = new UnprotectedWriteOperation(XpdResourcesPlugin.getDefault().getEditingDomain()) {
            @Override
            protected Object doExecute() {
                String configFileName = "my.example";
                writeComponentToConfigFile(getCompositeFolder(soaProject).getFile(configFileName), component);
                ((UpgradeImplementation) component.getImplementation()).setConfigFile(configFileName);
                return null;
            }
        };
        op.execute();
    }

    public static Component createJavaComponent(final Composite composite, final String name, final String packageName, final String className) {

        UnprotectedWriteOperation op = new UnprotectedWriteOperation(XpdResourcesPlugin.getDefault().getEditingDomain()) {
            @Override
            protected Object doExecute() {
                CompositeModelBuilder modelBuilder = ComponentTypeActivator.getDefault().getModelBuilder();
                Component javaComponent = modelBuilder.createComponent(composite, null);
                javaComponent.setName(name);
                ComponentTypeService componentTypeService = ComponentTypeActivator.getDefault().getComponentTypeService();
                componentTypeService.configureDefaultComponent("implementation.java", javaComponent);
                TestCase.assertEquals("The implementation object of the created component is not a java implementation", javaComponent.getImplementation() instanceof JavaImplementation, true);
                JavaImplementation javaImplementation = (JavaImplementation) javaComponent.getImplementation();
                javaImplementation.setClass(packageName + "." + className);
                return javaComponent;
            }
        };
        return (Component) op.execute();
    }

    public static void importWsdl(IProject proj, String pluginLocation, String filename) {
        URL entry = UpgradeActivator.getDefault().getBundle().getEntry(pluginLocation);
        importWsdl(proj, entry, filename);
    }

    /**
     * Import WSDL into wsdl special folder from given url.
     * 
     * It can come from bundle: <br>
     * <code>URL entry = UpgradeActivator.getDefault().getBundle().getEntry(pluginLocation)</code>
     * 
     * @param proj
     *            project where to copy the wsdl
     * @param entry
     *            url of the wsdl (can point to the bundle entry)
     * @param filename
     *            name of the wsdl filename
     */
    public static void importWsdl(IProject proj, URL entry, String filename) {

        // check te current number of port types
        IndexerService indexer = XpdResourcesPlugin.getDefault().getIndexerService();
        IndexerItemImpl criteria = new IndexerItemImpl();
        criteria.setType("PORT_TYPE"); //$NON-NLS-1$
        int currentIntexSize = indexer.query("com.tibco.amf.wsdl.indexer", criteria).size();

        // import the wsdl
        ProjectConfig pc = XpdResourcesPlugin.getDefault().getProjectConfig(proj);
        EList<SpecialFolder> servi = pc.getSpecialFolders().getFoldersOfKind("wsdl");
        IContainer folder;
        if (!servi.isEmpty()) {
            folder = servi.get(0).getFolder();
        } else {
            folder = proj;
        }
        IFile file = folder.getFile(new Path(filename));
        try {
            InputStream content = entry.openStream();
            file.create(content, true, null);
            content.close();
        } catch (CoreException e) {
            e.printStackTrace();
            TestCase.fail(e.getMessage());
        } catch (IOException e) {
            e.printStackTrace();
            TestCase.fail(e.getMessage());
        }

        // allow indexing of the wsdl
        System.out.println("Wating for the indexer");

        int i = 0;
        for (; i < 20; i++) {
            Collection<IndexerItem> items = indexer.query("com.tibco.amf.wsdl.indexer", criteria);
            if (items.size() > currentIntexSize) {
                System.out.println("Got It!");
                break;
            }
            System.out.print(".");
            delay(1000);
        }
        TestCase.assertTrue("Failed to index imported wsdls in 20 sec. ", i < 20);
    }

    /**
     * Returns first port type with given name from the index.
     * 
     * @param portTypeName
     * @return
     */
    public static PortType getPortType(String portTypeName) {
        IndexerService indexer = XpdResourcesPlugin.getDefault().getIndexerService();
        IndexerItemImpl criteria = new IndexerItemImpl();
        criteria.setType("PORT_TYPE"); //$NON-NLS-1$
        Collection<IndexerItem> items = indexer.query("com.tibco.amf.wsdl.indexer", criteria);

        String suffix = "}" + portTypeName;
        for (IndexerItem indexerItem : items) {
            if (indexerItem.getName().endsWith(suffix)) {
                String uri = indexerItem.getURI();
                PortType object = (PortType) XpdResourcesPlugin.getDefault().getEditingDomain().getResourceSet().getEObject(URI.createURI(uri), true);
                return object;
            }
        }
        TestCase.fail("Could not find port type: " + portTypeName);
        return null;
    }

    public static void syncComponentWithComponentType(final Component compComponent) {
        UnprotectedWriteOperation op = new UnprotectedWriteOperation(XpdResourcesPlugin.getDefault().getEditingDomain()) {
            @Override
            protected Object doExecute() {
                try {
                    ComponentUtil.syncComponentWithComponentType(compComponent);
                } catch (Exception e) {
                    e.printStackTrace();
                    TestCase.fail(e.getMessage());
                }
                return null;
            }
        };
        op.execute();
    }

    public static ComponentService createService(final Component c1, final PortType pt) {
        UnprotectedWriteOperation op = new UnprotectedWriteOperation(XpdResourcesPlugin.getDefault().getEditingDomain()) {
            @Override
            protected Object doExecute() {
                ComponentService cr = CompositeFactory.eINSTANCE.createComponentService();

                Wsdl11Interface interf = SCAExtensionsFactory.INSTANCE.createWsdl11Interface();
                interf.setPortType(pt);
                cr.setName(pt.getQName().getLocalPart());
                cr.setInterface(interf);
                c1.getServices().add(cr);
                
                return cr;
            }
        };
        return (ComponentService) op.execute();
    }

    public static PromotedService promoteService(final ComponentService componentService) {
        UnprotectedWriteOperation op = new UnprotectedWriteOperation(XpdResourcesPlugin.getDefault().getEditingDomain()) {
            @Override
            protected Object doExecute() {
                CompositeModelBuilder modelBuilder = ComponentTypeActivator.getDefault().getModelBuilder();
                return modelBuilder.promoteService(componentService);
            }
        };
        return (PromotedService) op.execute();
    }

    public static void generateDAA(IFile composite) {

        IMarker[] markers;
        try {
            markers = composite.findMarkers("com.tibco.xpd.validation.emfMarker", true, IResource.DEPTH_ZERO);
            StringBuilder sb = new StringBuilder();
            for (IMarker marker : markers) {
                sb.append("Marker present: ");
                sb.append(marker.getAttribute(IMarker.SEVERITY));
                sb.append(" ");
                sb.append(marker.getAttribute(IMarker.MESSAGE));
                sb.append('\n');
            }
            if (sb.length() > 0) {
                TestCase.fail("Composite: " + composite.getFullPath().toPortableString() + " has problems: \n" + sb.toString());
            }
        } catch (CoreException e) {
            e.printStackTrace();
            TestCase.fail(e.getMessage());
        }

        IPackagerWizardContext ctx = WizardContextFactory.INSTANCE.createContext(composite, MODE.DAA_GENERATION);

        // remove the silver platform from the list
        FeatureProxy[] objects = (FeatureProxy[]) ctx.getValueArray(IPackagerWizardContext.PRODUCT_FEATURES);
        List<FeatureProxy> features = new ArrayList<FeatureProxy>(objects.length);
        for (FeatureProxy ob : objects) {
            String id = ((FeatureProxy) ob).getId();
            if (!"com.tibco.silver.runtime.product.feature".equals(id)) {
                features.add(ob);
            }
        }
        ctx.setValueArray(IPackagerWizardContext.PRODUCT_FEATURES, features.toArray(new FeatureProxy[0]));
        ctx.setBooleanValue(IPackagerWizardContext.NEED_TO_SAVE_SPEC, false);

        NewDaaGenerationOperation op = new NewDaaGenerationOperation(ctx);
        try {
            op.run(new NullProgressMonitor());
        } catch (Exception e) {
            e.printStackTrace();
            if (e instanceof CoreException) {
                System.out.println("+---------+------------------------------------------------------");
                System.out.println("+");
                IStatus st = ((CoreException) e).getStatus();
                String message = toString(st);
                System.out.println("+ " + message);
                System.out.println("+");
                System.out.println("+----------------------------------------------------------------");

            }

            Throwable e1 = e;
            while (e1.getCause() != null && e1 != e1.getCause()) {
                if (e1 instanceof CoreException) {
                    System.out.println("+----------------------------------------------------------------");
                    System.out.println("+");
                    IStatus st = ((CoreException) e1).getStatus();
                    String message = toString(st);
                    System.out.println("+ " + message);
                    System.out.println("+");
                    System.out.println("+----------------------------------------------------------------");

                }
                e1 = e1.getCause();
            }
            TestCase.fail(e1.getMessage());
        }

        // let the framework chance to process messages...
        delay(100);
        // refresh the workspace
        try {
            ResourcesPlugin.getWorkspace().getRoot().refreshLocal(IResource.DEPTH_INFINITE, new NullProgressMonitor());
        } catch (CoreException e1) {
            e1.printStackTrace();
        }

        // check if the DAA is there
        String loc = ctx.getStringValue(IPackagerWizardContext.OUTPUT_FILE_PATH);
        IFile location = ResourcesPlugin.getWorkspace().getRoot().getFile(new Path(loc));
        TestCase.assertTrue("Expected DAA location: " + loc, location.exists());
        System.out.println("Generated DAA: " + loc);

        // publish DAA (if run in property is set)
        String publishFolder = System.getProperty("daa.publish");
        if (publishFolder != null && publishFolder.length() > 0) {
            System.out.println("Copping DAAs to the workspace: " + publishFolder);
            File parent = new File(publishFolder);
            if (parent.exists()) {
                String destination = publishFolder + File.separator + "results" + File.separator + location.getName();
                System.out.println("Publishing DAA to: " + destination);
                try {
                    FileOutputStream out = new FileOutputStream(new File(destination));
                    InputStream in = location.getContents(true);
                    byte[] buf = new byte[1024];
                    int len;
                    while ((len = in.read(buf)) > 0) {
                        out.write(buf, 0, len);
                    }
                    in.close();
                    out.close();
                } catch (CoreException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        } else {
            System.out.println("There is no publish location for DAA:" + publishFolder);
        }
    }

    /**
     * Build the projects. This will clear any problem markers which are no
     * longer valid.
     */
    public static void buildProjects() {
        IWorkspaceRoot wsRoot = ResourcesPlugin.getWorkspace().getRoot();

        IProject[] projects = wsRoot.getProjects();
        for (IProject project : projects) {
            try {
                IProgressMonitor progressMonitor = new NullProgressMonitor();
                project.build(IncrementalProjectBuilder.CLEAN_BUILD, progressMonitor);
            } catch (CoreException e) {
                e.printStackTrace();
                TestCase.fail(e.getMessage());
            }
        }
    }

    private static String toString(IStatus st) {
        StringBuilder sb = new StringBuilder();
        sb.append(st.getMessage());
        if (st instanceof MultiStatus) {
            IStatus[] children = ((MultiStatus) st).getChildren();
            sb.append(" (");
            for (IStatus status : children) {
                sb.append(toString(status));
            }
            sb.append(") ");
        }
        return sb.toString();
    }

    /**
     * @generated
     */
    public static void writeComponentToConfigFile(IFile file, Component component) {
        ComponentType componentType = createComponentType(component);
        writeComponentTypeToConfigFile(file, componentType);
    }

    public static void writeComponentTypeToConfigFile(IFile file, ComponentType componentType) {
        String comments = "Created by: " + System.getProperty("user.name") + "\t" + DateFormat.getDateTimeInstance().format(new Date());
        Properties properties = new Properties();
        if (componentType != null) {
            writeServices(properties, componentType.getServices());
            writeReferences(properties, componentType.getReferences());
            writeProperties(properties, componentType.getProperties());
        }

        FileOutputStream fos = null;
        try {
            fos = new FileOutputStream(file.getLocation().toFile(), false);
            properties.storeToXML(fos, comments);
            file.refreshLocal(0, new NullProgressMonitor());
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (CoreException e) {
            e.printStackTrace();
        } finally {
            if (fos != null) {
                try {
                    fos.close();
                } catch (IOException e) {
                }
            }
        }
    }

    private static final String COMPONENT_PROPERTIES = "component.properties";
    private static final String COMPONENT_PROPERTY = "component.property";

    private static final String COMPONENT_REFERENCE = "component.reference";
    private static final String COMPONENT_REFERENCES = "component.references";

    private static final String COMPONENT_SERVICE = "component.service";
    private static final String COMPONENT_SERVICES = "component.services";

    private static final String VALUE_SEPERATOR = ",";

    /**
     * @generated
     */
    private static void writeProperties(Properties op, EList<Property> propertiesList) {
        if (propertiesList.size() == 0) {
            return;
        }
        StringBuffer names = new StringBuffer();
        for (Property property : propertiesList) {
            names.append(property.getName()).append(VALUE_SEPERATOR);
        }
        names.deleteCharAt(names.length() - 1);// remove last ","
        writeProperty(op, COMPONENT_PROPERTIES, names.toString());

        for (Property property : propertiesList) {
            writeProperty(op, property);
        }
    }

    /**
     * @generated
     */
    private static void writeProperty(Properties properties, Property property) {
        String prefix = COMPONENT_PROPERTY + "." + property.getName();
        writeProperty(properties, prefix + ".value", property.getSimpleValue());
        writeProperty(properties, prefix + ".mustsupply", property.isMustSupply() ? "true" : "false");
        writeProperty(properties, prefix + ".type", property.getType().toString());

    }

    /**
     * @generated
     */
    private static void writeProperty(Properties properties, String key, String value) {
        properties.setProperty(key, value);
    }

    /**
     * @generated
     */
    private static void writeReferences(Properties properties, EList<Reference> references) {
        // no reference, do nothing
        if (references.size() == 0) {
            return;
        }
        StringBuffer names = new StringBuffer();
        for (Reference reference : references) {
            names.append(reference.getName()).append(VALUE_SEPERATOR);
        }
        names.deleteCharAt(names.length() - 1);// remove last ","
        writeProperty(properties, COMPONENT_REFERENCES, names.toString());

        for (Reference reference : references) {
            writeReference(properties, reference);
        }
    }

    /**
     * @generated
     */
    private static void writeReference(Properties properties, Reference reference) {
        String prefix = COMPONENT_REFERENCE + "." + reference.getName();
        writeProperty(properties, prefix + ".autowire", reference.isAutowire() ? "true" : "false");
        writeProperty(properties, prefix + ".multiplicity", reference.getMultiplicity().getLiteral());
        writeInterface(properties, prefix, reference.getInterface());
        writeCallback(properties, prefix, reference.getCallback());
    }

    /**
     * @generated
     */
    private static void writeServices(Properties properties, EList<Service> services) {
        // no service, do nothing
        if (services.size() == 0) {
            return;
        }
        StringBuffer names = new StringBuffer();
        for (Service service : services) {
            names.append(service.getName()).append(VALUE_SEPERATOR);
        }
        names.deleteCharAt(names.length() - 1);// remove last ","
        writeProperty(properties, COMPONENT_SERVICES, names.toString());

        for (Service service : services) {
            writeService(properties, service);
        }
    }

    /**
     * @generated
     */
    private static void writeService(Properties properties, Service service) {
        String prefix = COMPONENT_SERVICE + "." + service.getName();
        writeInterface(properties, prefix, service.getInterface());
        writeCallback(properties, prefix, service.getCallback());
    }

    /**
     * @generated
     */
    private static void writeCallback(Properties properties, String prefix, Callback callback) {
        // TODO to be implemented
    }

    /**
     * @generated
     */
    private static void writeInterface(Properties properties, String prefix, Interface interface1) {
        // TODO what we should do if the interface is not wsdl interface
        if (interface1 instanceof Wsdl11Interface) {
            Wsdl11Interface wsdlInterface = (Wsdl11Interface) interface1;
            writeProperty(properties, prefix + ".interface.porttype", wsdlInterface.getPortTypeName());
            writeProperty(properties, prefix + ".interface.wsdllocation", wsdlInterface.getWsdlLocation());
        }
    }

    public static ComponentType createComponentType(Component component) {
        if (component == null) {
            return null;
        }
        ComponentTypeFactory f = ComponentTypeFactory.eINSTANCE;
        ComponentType ct = f.createComponentType();

        List<ComponentService> services = component.getServices();
        for (ComponentService serv : services) {
            Service s = f.createService();
            if (serv.getCallback() != null) {
                s.setCallback((Callback) EcoreUtil.copy(serv.getCallback()));
            }
            if (serv.getInterface() != null) {
                s.setInterface((Interface) EcoreUtil.copy((EObject) serv.getInterface()));
            }
            s.setName(serv.getName());
            ct.getServices().add(s);
        }
        List<ComponentReference> references = component.getReferences();
        for (ComponentReference ref : references) {
            Reference r = f.createReference();
            if (ref.getCallback() != null) {
                r.setCallback((Callback) EcoreUtil.copy(ref.getCallback()));
            }
            if (ref.getInterface() != null) {
                r.setInterface((Interface) EcoreUtil.copy((EObject) ref.getInterface()));
            }
            r.setName(ref.getName());
            r.setWiredByImpl(ref.isWiredByImpl());
            r.setMultiplicity(ref.getMultiplicity());
            ct.getReferences().add(r);
        }

        List<ComponentProperty> componentProperties = component.getProperties();
        for (ComponentProperty componentProperty : componentProperties) {
            Property property = SCAExtensionsFactory.INSTANCE.createProperty();
            property.setType(componentProperty.getType());
            property.setMustSupply(componentProperty.isMustSupply());
            property.setName(componentProperty.getName());
            property.setSimpleValue(componentProperty.getSimpleValue());
            property.setComplexValue(componentProperty.getComplexValue());
            ct.getProperties().add(property);
        }

        return ct;
    }

}
