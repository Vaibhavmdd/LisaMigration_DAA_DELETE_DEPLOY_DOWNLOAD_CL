<xsl:stylesheet version="1.0"

	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



	<xsl:template match="/">

		<html>

			
			<body>



				<h3 align="left" style="font-family: Arial">

					TIBCO ActiveMatrix 3<br/><br/>Ant Macro Definitions

                        </h3>

				<br />

				<br />

				<hr />



				<ul id="Macrodefs">
					
					<xsl:for-each select="//project/macrodef">
						<xsl:variable name="macroDefName" select="@name" />
						<li>
							<a href="macrodefs.html#{$macroDefName}" target="details"
								style=" font-size: 9pt; font-family: Arial">
								<xsl:value-of select="@name" />
							</a>

						</li>

					</xsl:for-each>
				</ul>


				<br />

			</body>

		</html>

	</xsl:template>



</xsl:stylesheet>

 
