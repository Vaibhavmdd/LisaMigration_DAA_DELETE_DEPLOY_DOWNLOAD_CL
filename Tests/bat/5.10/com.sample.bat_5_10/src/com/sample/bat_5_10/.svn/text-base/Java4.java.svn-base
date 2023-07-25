package com.sample.bat_5_10;

import org.osoa.sca.annotations.Init;
import org.osoa.sca.annotations.Destroy;

import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;
import javax.naming.ldap.LdapContext;
import com.tibco.www.SRTest.SRTest;
import com.tibco.srTest.SRTestRequestDocument;
import com.tibco.srTest.SRTestResponseDocument;
import com.tibco.srTest.SRTestRequestDocument.SRTestRequest;
import com.tibco.srTest.SRTestResponseDocument.SRTestResponse;

/**
 * Implementation of Java4 component.
 *
 */
public class Java4 extends AbstractJava4 {

	/**
	 * Initialization of Java4 component.
	 */
	@Init
	public void init() {
		// Component initialization code.
		// All properties are initialized and references are injected.
	}

	/**
	 * Disposal of Java4 component.
	 */
	@Destroy
	public void destroy() {
		// Component disposal code.
		// All properties are disposed.
	}

	/**
	 * Implementation of the WSDL operation: SRTestOperation	 */
	public SRTestResponseDocument sRTestOperation(SRTestRequestDocument inParam) {
		// Add the business logic here
		SRTestRequest req = inParam.getSRTestRequest();
		String query = req.getLdapQuery();
		String searchQuery = "defaultQuery";
		String res = "defaultResp";
		boolean ldap = false;
		
		// Attempt to query ldap server
		LdapContext ldapCtxt = getLdap();
		if (ldapCtxt == null) {
			System.out.println("The ldap context is not available.");
		} else {
			ldap = true;
			System.out.println("Successfully obtained ldap context");
			try {
				System.out
						.println("The namespace-name of this ldap context is : "
								+ ldapCtxt.getNameInNamespace());

				// Execute Query and print the results
				searchQuery = query;
				if (searchQuery == null) {
					System.out
							.println("No search query supplied. So can't search LDAP query.");
				} else {
					res = performSearch(searchQuery);
				}
			} catch (NamingException e) {
				System.out
						.println("Failed to get the LDAP context namespace. Exception:\n "
								+ e.getExplanation());
			}
		}
		System.out.println("Getting ldap context for query '" + query + "' returned: " + res);
		// Prepare response
		SRTestResponseDocument responseDoc = SRTestResponseDocument.Factory
				.newInstance();
		SRTestResponse resp = SRTestResponse.Factory.newInstance();
		resp.setResult("Getting ldap context returned: " + ldap);
		System.out.println("Getting ldap context returned: " + ldap);
		responseDoc.setSRTestResponse(resp);

		return responseDoc;
	}
	
	private String performSearch(String searchQuery2) {
		SearchControls constraints = new SearchControls();
		constraints.setSearchScope(SearchControls.SUBTREE_SCOPE);

		NamingEnumeration namingEnum;
		LdapContext ldapCtxt = getLdap();
		String baseDN = "cn=Directory Manager";
		String dn = "defaultDN";
		try {	
			namingEnum = ldapCtxt.search(baseDN, searchQuery2, constraints);
			if (namingEnum == null) {
				System.out.println("No results from ldap query '" + searchQuery2 + "' were found.");
			} else {
				System.out.println("Printing the search results...");
				while (namingEnum.hasMore()) {
					SearchResult res = (SearchResult) namingEnum.next();
					dn = res.getName();
					System.out.println("Found matching resource = " + dn);
				}
			}
		} catch (NamingException e) {
			System.out
					.println("Naming Exception occured while searching. Exception:\n "
							+ e.getExplanation());
		}
		return dn;
	}
}
