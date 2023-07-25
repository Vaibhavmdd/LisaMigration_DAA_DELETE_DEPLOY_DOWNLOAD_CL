package cmt_v30_01_model;

import java.util.ResourceBundle;
import java.util.MissingResourceException;

public class Messages {
	private static final String BUNDLE_NAME = "cmt_v30_01_model.messages"; //NON-NLS-1

	private static final ResourceBundle RESOURCE_BUNDLE = ResourceBundle
			.getBundle(BUNDLE_NAME);

	private Messages() {
	}

	public static String getString(String key) {
		try {
			return RESOURCE_BUNDLE.getString(key);
		} catch (MissingResourceException e) {
			return '!' + key + '!';
		}
	}
}
