<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<factureStat>
			<xsl:apply-templates select="//facture"/>
		</factureStat>
	</xsl:template>
	<!--<xsl:template match="facture">
		<facture>
			
		</facture>
	</xsl:template>
	<xsl:template match="facture[@type='devis']">
		<devis>
		
		</devis>
	</xsl:template>-->
	<xsl:template match="facture">
		<xsl:element name="{@type}" >
			<xsl:attribute name="idfacture"><xsl:value-of select="@numfacture"/></xsl:attribute>
			<nbArt><xsl:value-of select="sum(.//nbUnit)"/></nbArt>
			<nbLignes><xsl:value-of select="count(.//ligne)"/></nbLignes>
			<avgLigne><xsl:value-of select="sum(.//stotligne) div count (.//stotligne)"/></avgLigne>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
