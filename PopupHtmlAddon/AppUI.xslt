<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:frmwrk="Corel Framework Data">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

  <frmwrk:uiconfig>
   
    <frmwrk:applicationInfo userConfiguration="true" />
  </frmwrk:uiconfig>

  <!-- Copy everything -->
  <xsl:template match="node()|@*">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
    </xsl:copy>
  </xsl:template>

<xsl:template match="uiConfig/items">
		<xsl:copy>
			<xsl:apply-templates select="node()|@*"/>


			<!--Creates your UI, HTML file --> 
			<!-- type='browserEdge' -->
			<!--GuidC-->
			<itemData guid="df6470af-33d9-4bc8-920b-f7ba307482b5"
					 type='browser'
					  suppressDialogs='true'
					  href="[VGAppAddonsDir]/PopupHtmlAddon/index.html"
					  enable="true"
					 />
					  	<!--DropdownButton -->
						<!--GuidB, dropDownRef=GuidC-->
			<itemData guid='69796d9d-986d-498e-9a8c-e11078a9dab9' type='dropDownDlgBtn' arrowStyle='down'
					  caption='teste html'
					  toolTip='teste html'
					  
					  dropDownRef='df6470af-33d9-4bc8-920b-f7ba307482b5'
					 length='200' width='200' enable='true'/>
            		</xsl:copy>
	</xsl:template>
  <xsl:template match="uiConfig/dialogs">
		<xsl:copy>
			<xsl:apply-templates select="node()|@*"/>
			<!--Use this Guid to call this dialog, this dialog stores the html-->
			<!--GuidA-->
			<dialog guid="39f3b36a-01c6-4889-aba9-7dc3c999c76e" 
			sheetMode="false" 
			width="205" 
			height="185" 
			resizable='true' 
			caption="My first form in javascript">
				<container>
				<!--GuidC-->
					<item  guidRef="df6470af-33d9-4bc8-920b-f7ba307482b5" dock="fill"/>
				</container>

			</dialog>

		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
