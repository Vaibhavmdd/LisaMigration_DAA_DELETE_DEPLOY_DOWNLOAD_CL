package cmt_v30_01_ui;

import java.util.ResourceBundle;
import java.util.MissingResourceException;

public class CMTV3001UIMessages {
	private static final String BUNDLE_NAME = "cmt_v30_01_ui.CMTV3001";
	private static final ResourceBundle RESOURCE_BUNDLE = ResourceBundle
			.getBundle(BUNDLE_NAME);

	public static String getString(String key) {
		try {
			return RESOURCE_BUNDLE.getString(key);
		} catch (MissingResourceException e) {
			return '!' + key + '!';
		}
	}
}
