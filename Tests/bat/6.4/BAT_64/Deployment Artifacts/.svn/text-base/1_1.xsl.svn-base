<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
  xmlns:pfx="http://www.books.org">
<xsl:param name="whatever"> <!--type="xsd:string"--></xsl:param>
<xsl:param name="globalparam"> <!--type="xsd:string"--></xsl:param>
<xsl:template name="root-book">
  <xsl:param name="param"> <!--type="xsd:string"--></xsl:param>
  <xsl:param name="param1"> <!--type="xsd:string"--></xsl:param>
  <pfx:root/>
</xsl:template>
<xsl:template match="/*">
  <pfx:BookStore>
    <xsl:for-each select="Book">
      <xsl:call-template name="handle-book"><xsl:with-param name="param"/></xsl:call-template>
    </xsl:for-each>
  </pfx:BookStore>
</xsl:template>
<xsl:template name="handle-book">
  <pfx:Book>
    <pfx:Title><xsl:value-of select="Title"/></pfx:Title>
    <pfx:Author><xsl:value-of select="Author"/></pfx:Author>
    <pfx:Date><xsl:value-of select="$whatever"/></pfx:Date>
    <pfx:ISBN><xsl:value-of select="$globalparam"/></pfx:ISBN>
    <pfx:Publisher><xsl:value-of select="&apos;BigTime Publishing7&apos;"/></pfx:Publisher>
  </pfx:Book>
</xsl:template>
</xsl:stylesheet>