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

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.wsdl.Part;
import javax.xml.namespace.QName;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.SAXParserFactory;

import org.apache.xml.serialize.OutputFormat;
import org.apache.xml.serialize.XMLSerializer;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SchemaTypeLoader;
import org.apache.xmlbeans.XmlBeans;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument;
import org.apache.xmlbeans.impl.xb.xsdschema.SchemaDocument;
import org.apache.xmlbeans.impl.xsd2inst.SampleXmlUtil;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.URIConverter;
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl;
import org.eclipse.emf.ecore.resource.impl.URIConverterImpl;
import org.eclipse.wst.wsdl.Definition;
import org.eclipse.wst.wsdl.util.WSDLResourceImpl;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import com.tibco.neo.component.ClassLoaderComponentRegistryManager;
import com.tibco.neo.component.ClassLoaderExtensionRegistryManager;
import com.tibco.neo.component.ExtensionRegistry;
import com.tibco.neo.serialization.EMFResourceFactoryRegistryManager;

 /**
 * <!-- begin-custom-doc -->
 * 
 * @version 1.0.0
 * <!-- end-custom-doc -->
 * @generated
 */
public class UpgradeContentGenerator {
    
    public static SchemaTypeLoader getLoaderForWsdl(final InputStream inputStream, final EntityResolver entityResolver) throws Exception {
        final ClassLoader originalClassLoader = Thread.currentThread().getContextClassLoader();
        try {
            Thread.currentThread().setContextClassLoader(XmlObject.class.getClassLoader());
            XmlOptions options = new XmlOptions();
            options.setLoadLineNumbers();
            options.setLoadSubstituteNamespaces(Collections.singletonMap(
                    "http://schemas.xmlsoap.org/wsdl/", "http://www.apache.org/internal/xmlbeans/wsdlsubst"
            ));
            options.setLoadUseXMLReader( SAXParserFactory.newInstance().newSAXParser().getXMLReader() );

            if (entityResolver != null) {
                options.setEntityResolver(entityResolver);
            }

            final DefinitionsDocument definitionsDocument = DefinitionsDocument.Factory.parse(inputStream, options);

            final List<XmlObject> schemaList = new ArrayList<XmlObject>();

            final XmlObject[] types = definitionsDocument.getDefinitions().getTypesArray();

            for (final XmlObject type : types) {
                final XmlObject[] schemas = type.selectPath("declare namespace xs=\"http://www.w3.org/2001/XMLSchema\" xs:schema");
                if (schemas.length == 0) {            
                    continue;
                }

                for (XmlObject schemaObject : schemas) {
                    if (schemaObject instanceof SchemaDocument.Schema) {
                        schemaList.add(schemaObject);
                    }
                }
            }

            return XmlBeans.loadXsd(schemaList.toArray(new XmlObject[0]), options);
        } finally {
            Thread.currentThread().setContextClassLoader(originalClassLoader);
        }
    }
    
    /**
	 * @generated
	 */
    public static Element getSampleNode(final SchemaTypeLoader schemaTypeLoader, final QName typeName, final boolean isElement) throws Exception {
        final SchemaType schemaType;
        
        if (isElement) {
            schemaType = schemaTypeLoader.findDocumentType(typeName);
        } else {
            schemaType = schemaTypeLoader.findType(typeName);
        }
        
        final String content = SampleXmlUtil.createSampleForType(schemaType);
        final StringReader stringReader = new StringReader(content);
        
        final DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
        documentBuilderFactory.setNamespaceAware(true);
        final DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();
        final Document document = documentBuilder.parse(new InputSource(stringReader));
        
        return document.getDocumentElement();
    }
    
    /**
	 * @generated
	 */    
    public static Element[] getSampleNodeList(final SchemaTypeLoader schemaTypeLoader, final Part[] parts) throws Exception {
        final Element[] nodes = new Element[parts.length];
        
        for (int i = 0, length = parts.length; i < length; i++) {
            final QName elementName = parts[i].getElementName();
            if (elementName != null) {
                nodes[i] = UpgradeContentGenerator.getSampleNode(schemaTypeLoader, elementName, true);
            } else {
                nodes[i] = UpgradeContentGenerator.getSampleNode(schemaTypeLoader, parts[i].getTypeName(), false);
            }
        }
        return nodes;
    }
 
     
/**
 * @generated
 */   
private final static class InternalEntityResolver implements EntityResolver {
        
        final File file;
        
        public InternalEntityResolver(final File file) {
            this.file = file;
        }

        /* (non-Javadoc)
         * @see org.xml.sax.EntityResolver#resolveEntity(java.lang.String, java.lang.String)
         */
        public final InputSource resolveEntity(final String publicId, final String systemId) throws SAXException, IOException {
            try {
                final URI uri = URI.createURI(systemId);
                
                if (uri.isRelative() && uri.isHierarchical() && uri.hasRelativePath()) {
                    return new InputSource(new FileInputStream(new File(this.file, uri.path())));
                } else {
                    return null;
                }
            } catch (final IllegalArgumentException exception) {
                return null;
            }
        }
    }

    private static final class MyURIConverter extends URIConverterImpl {
        
        final File file;
        
        /**
         * @param file
         */
        public MyURIConverter(final File file) {
            this.file = file;
        }

        /* (non-Javadoc)
         * @see org.eclipse.emf.ecore.resource.impl.URIConverterImpl#createInputStream(org.eclipse.emf.common.util.URI)
         */        
        public InputStream createInputStream(URI uri) throws IOException {
            if (uri != null && uri.isRelative()) {
                return super.createInputStream(URI.createFileURI(new File(this.file, uri.path()).getAbsolutePath()));
            }
            
            return super.createInputStream(uri);
        }
    }
    
   /**
    * @generated
    */    
    public static void main(String[] args) throws Exception {
        
        File file = new File(".");
        
        final ResourceSet resourceSet = new ResourceSetImpl();
        resourceSet.setURIConverter(new MyURIConverter(file));
        
        final ClassLoaderComponentRegistryManager componentRegistryManager = new ClassLoaderComponentRegistryManager();
        componentRegistryManager.createRegistry(null);
        final ClassLoaderExtensionRegistryManager extensionRegistryManager = new ClassLoaderExtensionRegistryManager();
        final ExtensionRegistry extensionRegistry = extensionRegistryManager.createRegistry(componentRegistryManager);

        new EMFResourceFactoryRegistryManager().loadRegistry(
                extensionRegistry,
                resourceSet.getResourceFactoryRegistry());
        
        //ExtensionRegistryProvider.getDefault().setThreadLocalExtensionRegistry(extensionRegistry);
        
        final WSDLResourceImpl resource = new WSDLResourceImpl(URI.createFileURI("WeatherService.wsdl"));
        resourceSet.getResources().add(resource);
        resource.load(null);
        
        Definition definition = resource.getDefinition();
        
        final URI uri = definition.eResource().getURI();
        final URIConverter converter = definition.eResource().getResourceSet().getURIConverter();
        
        final SchemaTypeLoader schemaTypeLoader = UpgradeContentGenerator.getLoaderForWsdl(converter.createInputStream(uri), new InternalEntityResolver(null));
        
        final Node node = UpgradeContentGenerator.getSampleNode(schemaTypeLoader, new QName("http://www.example.org/weatherschema", "WeatherResponseType"), false);
        
        System.out.println(node.getNodeType() == Node.ELEMENT_NODE);
        
        final XMLSerializer serializer = new XMLSerializer();
        serializer.setNamespaces(true);
        final OutputFormat outputFormat = new OutputFormat();
        outputFormat.setIndenting(true);
        outputFormat.setIndent(4);
        serializer.setOutputFormat(outputFormat);
        serializer.setOutputByteStream(System.out);
        if (node instanceof Element) {
            serializer.serialize((Element) node);
        } else if (node instanceof Document) {
            serializer.serialize((Document) node);
        } else if (node instanceof DocumentFragment) {
            serializer.serialize((DocumentFragment) node);
        }
    }
}
