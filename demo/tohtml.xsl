<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title></title>
			</head>
			<body>
				<table style="width:100%">
					<thead>
						<tr>
							<th>num facture</th>
							<th>type</th>
							<th>id client</th>
							<th>datefacture</th>
							<th>somme total</th>
						</tr>
					</thead>
					<tbody>
						<xsl:apply-templates select="//facture">
							<xsl:sort select="@type" order="descending"/>
						</xsl:apply-templates>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="facture">
		<tr>
			<td><xsl:value-of select="@numfacture"/></td>
			<td><xsl:value-of select="@type"/></td>
			<td><xsl:value-of select="@idclient"/></td>
			<td><xsl:value-of select="@datefacture"/></td>
			<td><xsl:value-of select="sum(.//stotligne)"/></td>
		</tr>
	</xsl:template>
</xsl:stylesheet>
