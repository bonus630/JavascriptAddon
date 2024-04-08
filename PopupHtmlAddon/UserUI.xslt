<?xml version="1.0" ?>

<xsl:stylesheet version="1.0"
								xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
								xmlns:frmwrk="Corel Framework Data"
								exclude-result-prefixes="frmwrk">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

  <!-- Use these elements for the framework to move the container from the app config file to the user config file -->
  <!-- Since these elements use the frmwrk name space, they will not be executed when the XSLT is applied to the user config file -->
	<frmwrk:uiconfig>
		<!-- The Application Info should always be the topmost frmwrk element -->
	
		<!--GuidA-->
		<frmwrk:compositeNode xPath="/uiConfig/dialogs/dialog[@guid='39f3b36a-01c6-4889-aba9-7dc3c999c76e']"/>
		<frmwrk:compositeNode xPath="/uiConfig/views/viewTemplate[@guid='ab303a90-464d-5191-423f-613c4d1dcb2c']"/>
		<frmwrk:compositeNode xPath="/uiConfig/frame"/>
	</frmwrk:uiconfig>
	<!-- Copy everything -->
	<xsl:template match="node()|@*">
		<xsl:copy>
			<xsl:apply-templates select="node()|@*"/>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="uiConfig/dialogs">
		<xsl:copy>
			<xsl:apply-templates select="node()|@*"/>
			<!--GuidA-->
			<xsl:if test="not(./dialog[@guidRef='39f3b36a-01c6-4889-aba9-7dc3c999c76e'])">
				<dialog guidRef="39f3b36a-01c6-4889-aba9-7dc3c999c76e" dock="top"/>
			</xsl:if>
			
		</xsl:copy>
	</xsl:template>

  
</xsl:stylesheet>