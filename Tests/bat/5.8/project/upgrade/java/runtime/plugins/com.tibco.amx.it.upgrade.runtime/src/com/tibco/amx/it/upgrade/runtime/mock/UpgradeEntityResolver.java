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
package com.tibco.amx.it.upgrade.runtime.mock;

import java.io.IOException;

import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.URIConverter;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

 /**
 * <!-- begin-custom-doc -->
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 */
public class UpgradeEntityResolver implements EntityResolver {

	private final URI baseURI;
	private final URIConverter uriConverter;

	/**
	 * @param uriConverter
	 */
	 	 /**
	 * <!-- begin-custom-doc -->
	 * @param uriConverter
	 * <!-- end-custom-doc -->
	 * @generated
	 */
	public UpgradeEntityResolver(final URI baseURI,
			final URIConverter uriConverter) {
		this.baseURI = baseURI;
		this.uriConverter = uriConverter;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xml.sax.EntityResolver#resolveEntity(java.lang.String,
	 * java.lang.String)
	 */
	public final InputSource resolveEntity(final String publicId,
			final String systemId) throws SAXException, IOException {
		try {
			URI uri = URI.createURI(systemId);

			if (uri.isRelative()) {
				uri = uri.resolve(this.baseURI);
				return new InputSource(this.uriConverter
						.createInputStream(uri));
			} else {
				return null;
			}
		} catch (final IllegalArgumentException exception) {
			return null;
		}
	}

}
