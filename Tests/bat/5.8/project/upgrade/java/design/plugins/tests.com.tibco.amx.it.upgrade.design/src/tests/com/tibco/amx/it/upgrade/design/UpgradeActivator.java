package tests.com.tibco.amx.it.upgrade.design;

import org.eclipse.core.runtime.Plugin;
import org.osgi.framework.BundleContext;

/**
 * The activator class controls the plug-in life cycle
 */
public class UpgradeActivator extends Plugin {

	// The plug-in ID
	public static final String PLUGIN_ID = "tests.com.tibco.amx.it.upgrade.design";

	// The shared instance
	private static UpgradeActivator plugin;
	
	/**
	 * The constructor
	 */
	public UpgradeActivator() {
	}

	/*
	 * (non-Javadoc)
	 * @see org.eclipse.core.runtime.Plugins#start(org.osgi.framework.BundleContext)
	 */
	public void start(BundleContext context) throws Exception {
		super.start(context);
		plugin = this;
	}

	/*
	 * (non-Javadoc)
	 * @see org.eclipse.core.runtime.Plugin#stop(org.osgi.framework.BundleContext)
	 */
	public void stop(BundleContext context) throws Exception {
		plugin = null;
		super.stop(context);
	}

	/**
	 * Returns the shared instance
	 *
	 * @return the shared instance
	 */
	public static UpgradeActivator getDefault() {
		return plugin;
	}

}
