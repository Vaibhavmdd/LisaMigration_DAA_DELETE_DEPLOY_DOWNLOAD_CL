/**
*(c) Copyright 2008, TIBCO Software Inc.  All rights reserved.
*
* LEGAL NOTICE:  This source code is provided to specific authorized end
* users pursuant to a separate license agreement.  You MAY NOT use this
* source code if you do not have a separate license from TIBCO Software
* Inc.  Except as expressly set forth in such license agreement, this
* source code, or any portion thereof, may not be used, modified,
* reproduced, transmitted, or distributed in any form or by any means,
* electronic or mechanical, without written permission from
* TIBCO Software Inc.
*/	
package com.tibco.amx.it.upgrade.runtime.util;

import javax.xml.namespace.QName;

 /**
 * <!-- begin-custom-doc -->
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 */
public class UpgradeSharedResourceHelper {
	
	private static final QName Boolean_QNAME= new QName("http://www.w3.org/2001/XMLSchema","boolean");	
	private static final QName Integer_QNAME= new QName("http://www.w3.org/2001/XMLSchema","int");	
	private static final QName String_QNAME= new QName("http://www.w3.org/2001/XMLSchema","string");	
	private static final QName JDBC_QNAME= new QName("http://xsd.tns.tibco.com/amf/models/sharedresource/jdbc","JdbcDataSource");
	private static final QName JMSConnFactory_QNAME= new QName("http://xsd.tns.tibco.com/amf/models/sharedresource/jms","JMSConnectionFactory");
	
	/**
	 * @generated
	 */
	public static Class getClassType(QName type){
		if (JDBC_QNAME.equals(type)){
			return javax.sql.DataSource.class;
		}
		
		if (Integer_QNAME.equals(type)){
			return Integer.class;
		}
		
		if (String_QNAME.equals(type)){
			return String.class;
		}
		
		if (Boolean_QNAME.equals(type)){
			return Boolean.class;
		}
		
		if (JMSConnFactory_QNAME.equals(type)){
			return javax.jms.ConnectionFactory.class;
		}
		
		throw new IllegalArgumentException("Unsupported property type: " + type);
	}
}
