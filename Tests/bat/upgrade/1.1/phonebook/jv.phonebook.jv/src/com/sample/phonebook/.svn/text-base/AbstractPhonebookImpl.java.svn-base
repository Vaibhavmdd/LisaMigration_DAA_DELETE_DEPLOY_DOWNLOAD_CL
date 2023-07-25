package com.sample.phonebook;

import org.osoa.sca.annotations.Property;
import javax.sql.DataSource;
import com.tibco.ns.phonebook.PhonebookPT;
import com.tibco.ns.phonebook.AddPhoneRequestDocument;
import com.tibco.ns.phonebook.AddPhoneResponseDocument;
import com.tibco.ns.phonebook.GetPhoneResponseDocument;
import com.tibco.ns.phonebook.GetPhoneRequestDocument;

/**
 * Abstract interface generated for component "JavaPhonebookComponent".
 *
 * This class will be completely generated, add custom code to the subclass: 
 * {@link com.sample.phonebook.AbstractPhonebookImpl AbstractPhonebookImpl}
 *
 * @Generated TEMPL003
 */
public abstract class AbstractPhonebookImpl implements PhonebookPT {

	private DataSource database;

	@Property(name = "database")
	public void setDatabase(DataSource database) {
		this.database = database;
	}

	public DataSource getDatabase() {
		return database;
	}

	/**
	 * Implementation of the WSDL operation: AddPhone	 */
	public abstract AddPhoneResponseDocument addPhone(
			AddPhoneRequestDocument addPhoneParameters);
	/**
	 * Implementation of the WSDL operation: GetPhone	 */
	public abstract GetPhoneResponseDocument getPhone(
			GetPhoneRequestDocument getPhoneParameters);

}
