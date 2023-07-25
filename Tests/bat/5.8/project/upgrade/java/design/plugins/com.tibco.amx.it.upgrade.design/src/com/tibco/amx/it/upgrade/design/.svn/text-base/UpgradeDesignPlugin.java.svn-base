package com.tibco.amx.it.upgrade.design;

import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.osgi.framework.BundleContext;

/**
 * <!-- begin-custom-doc -->
 * The activator class controls the plug-in life cycle
 *
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 */
public class UpgradeDesignPlugin extends AbstractUIPlugin {

	/**
	 * @generated
	 */
	public static final String PLUGIN_ID = "com.tibco.amx.it.upgrade.design";

	/**
	 * @generated
	 */
	private static UpgradeDesignPlugin plugin;
	
	/**
	 * The constructor
	 * @generated
	 */
	public UpgradeDesignPlugin() {
	}

	/**
	 * @generated
	 * (non-Javadoc)
	 * @see org.eclipse.ui.plugin.AbstractUIPlugin#start(org.osgi.framework.BundleContext)
	 */
	public void start(BundleContext context) throws Exception {
		super.start(context);
		plugin = this;
	}

	/**
	 * @generated
	 * (non-Javadoc)
	 * @see org.eclipse.ui.plugin.AbstractUIPlugin#stop(org.osgi.framework.BundleContext)
	 */
	public void stop(BundleContext context) throws Exception {
		plugin = null;
		super.stop(context);
	}

	/**
	 * Returns the shared instance
	 * @generated
	 * @return the shared instance
	 */
	public static UpgradeDesignPlugin getDefault() {
		return plugin;
	}

	/** 
	 * (non-Javadoc)
	 * @see org.eclipse.ui.plugin.AbstractUIPlugin#initializeImageRegistry(org.eclipse.jface.resource.ImageRegistry)
	 * @generated
	 */
	@Override
	protected void initializeImageRegistry(ImageRegistry reg) {
		for (Images imagePath : Images.values()) {
			reg.put(imagePath.getPath(), imageDescriptorFromPlugin(PLUGIN_ID,
					imagePath.getPath()));
		}
	}

	/**
	 * @generated
	 */
	public enum Images {
		UPGRADE_SMALL("icons/upgrade_16x16.png"),
		UPGRADE_MEDIUM("icons/upgrade_24x24.png"),
		UPGRADE_BIG("icons/upgrade_32x32.png");
		
		private final String path;

		/**
		 * @generated
		 */
		private Images(String path) {
			this.path = path;
		}
		
		/**
		 * @generated
		 */
		public String getPath() {
			return this.path;
		}
	}
}
