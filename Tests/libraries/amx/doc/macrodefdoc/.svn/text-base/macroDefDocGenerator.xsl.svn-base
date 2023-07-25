<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" />
	<xsl:template match="/">

		<html>
			<body>
				<table border="0">
					<xsl:for-each select="//project/macrodef">
						<xsl:variable name="macroDefName" select="@name" />
						<tr>
							<td style="font-size=20;">
								<b>
									<a name="{$macroDefName}">
										<xsl:value-of select="@name" />
									</a>
								</b>
							</td>
						</tr>
						<tr valign="top">
							<td>
								<xsl:value-of select="@description" />
							</td>
						</tr>
						<tr />
						<tr />
						<tr>
							<td>
								<table border="0.5" width="550">
									<tr bgcolor="#CCCCFF" valign="top">
										<th width="25%" align="left">
											Parameter
										</th>
										<th width="75%" align="left">
											Description
										</th>
									</tr>
									<xsl:for-each select="attribute">
										<tr valign="top">
											<td>
												<xsl:value-of select="@name" />
											</td>
											<td>
												<xsl:value-of select="@description" />
											</td>
										</tr>
									</xsl:for-each>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<hr />
							</td>
						</tr>
						<tr />
						<tr />
					</xsl:for-each>
				</table>
				<hr />
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
