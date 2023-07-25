<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:mfc="http://com.tibco.amsb.core.common.exchange/mediationflowcontext" xmlns:ns="http://xmlns.example.com/1213065333875/GetAddressImpl/BW__TransformXML3/Service" xmlns:ns0="http://www.tibco.com/schemas/InvokeSanityTest/WSDL/Schema.xsd" version="2.0">
    <xsl:param name="MediationFlowContext"/>
    <xsl:template name="MessageData" match="/">
        <ns:Name>
            <ns:part1>
                <ns0:Name>
                    <ns0:FirstName>
                        <xsl:value-of select="$MediationFlowContext/mfc:MediationFlowContext/mediationFlow"/>
                    </ns0:FirstName>
                    <ns0:LastName>
                        <xsl:value-of select="$MediationFlowContext/mfc:MediationFlowContext/mediationOperation"/>
                    </ns0:LastName>
                </ns0:Name>
            </ns:part1>
        </ns:Name>
    </xsl:template>
</xsl:stylesheet>