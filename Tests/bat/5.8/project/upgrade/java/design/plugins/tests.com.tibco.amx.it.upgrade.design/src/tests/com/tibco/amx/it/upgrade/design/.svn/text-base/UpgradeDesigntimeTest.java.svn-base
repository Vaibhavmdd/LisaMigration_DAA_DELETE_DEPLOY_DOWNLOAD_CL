package tests.com.tibco.amx.it.upgrade.design;

import java.io.IOException;

import junit.framework.TestCase;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.wst.wsdl.PortType;

import com.tibco.amf.sca.model.composite.Component;
import com.tibco.amf.sca.model.composite.ComponentService;
import com.tibco.amf.sca.model.composite.Composite;
import com.tibco.xpd.resources.util.WorkingCopyUtil;

public class UpgradeDesigntimeTest extends TestCase {

    private static final String TEST_PROJECT = "DesignTimeTest";

    private IProject soaProject;

    protected void setUp() throws Exception {
        UpgradeUtil.closeWelcomePage();
        UpgradeUtil.removeProject(TEST_PROJECT);
        this.soaProject = UpgradeUtil.createProject(TEST_PROJECT);
    }

    public void testDesigntime() throws IOException {

        // Create the four special folders
        UpgradeUtil.configureSoaProject(soaProject);

        // Create a composite
        IFolder compositeFolder = UpgradeUtil.getCompositeFolder(soaProject);
        Composite subComposite = UpgradeUtil.createComposite(compositeFolder.getFullPath(), "sub-composite");

        // Import WeatherReport.wsdl file
        UpgradeUtil.importWsdl(this.soaProject, "test-data/WeatherService.wsdl", "WeatherService.wsdl");

        // Get WeatherReportPortType
        PortType weatherPT = UpgradeUtil.getPortType("WeatherReportPT");

        // Create ImplementationType component
        Component itComponent = UpgradeUtil.createITExampleComponent(subComposite, "ExampleIT");

        // Create component service
        ComponentService service = UpgradeUtil.createService(itComponent, weatherPT);
        
        // Promote the component service
        UpgradeUtil.promoteService(service);
        
        // Configure IT component
        UpgradeUtil.configITComponent(itComponent, this.soaProject);

        // Save working copy
        WorkingCopyUtil.getWorkingCopyFor(subComposite).save();

        // Build project
        UpgradeUtil.buildProjects();

        // Generate DAA file
        IResource compositeFile = WorkingCopyUtil.getWorkingCopyFor(subComposite).getEclipseResources().get(0);
        UpgradeUtil.generateDAA((IFile) compositeFile);
    }

    protected void tearDown() throws Exception {
         UpgradeUtil.removeProject(TEST_PROJECT);
    }

}
