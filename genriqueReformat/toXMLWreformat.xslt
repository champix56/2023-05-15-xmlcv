<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<factures>
			<xsl:copy-of select="/factures/@*"/>
			<xsl:apply-templates select="/factures/*"/>
		</factures>
	</xsl:template>
	<xsl:template match="facture">
		<facture>
			<xsl:apply-templates select="*|@*"/>
		</facture>
	</xsl:template>
	<xsl:template match="facture[@type='devis']">
		<devis>
			<xsl:apply-templates select="*|@*"/>
		</devis>
	</xsl:template>
	<xsl:template match="*|@*">
		<xsl:copy-of select="."/>
	</xsl:template>
	<xsl:template match="client"/>
	<xsl:template match="@numfacture">
		<xsl:attribute name="id{name(..)}"><xsl:value-of select="."/></xsl:attribute>
	</xsl:template>
</xsl:stylesheet>
