<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:variable name="break">&lt;br&gt;</xsl:variable>
<xsl:template match="/">
<html>
	<body>
		<h2>Index</h2>
			<table border="1">
				<tr bgcolor="#9acd32">
				  <th align="left">Imie</th>
				  <th align="left">Nazwisko</th>
				  <th align="left">Numer indeksu</th>
				</tr>
			<xsl:for-each select="index">	
				<tr>
					<td>
						<xsl:value-of select="imie"/>
					</td>
					<td>
						<xsl:value-of select="nazwisko"/>
					</td>
					<td>
						<xsl:value-of select="nr_indeks"/>
					</td>
				</tr>
			</xsl:for-each>
			</table>
		
			
			<xsl:value-of disable-output-escaping="yes" select=" concat(substring(@Title,1,5),$break)" />
			
			<table border="1">
				<tr bgcolor="#9acd32">
				  <th align="left">Nazwa</th>
				  <th align="left">Prowadzący</th>
				  <th align="left">Godzina</th>
				  <th align="left">Ocena</th>
				</tr>
			<xsl:for-each select="index/przedmiot">
				<tr>
					<td>
						<xsl:value-of select="nazwa"/>
					</td>
					<td>
						<xsl:value-of select="prowadzacy"/>
					</td>
					<td>
						<xsl:value-of select="godzina"/>
					</td>
					<td>
						<xsl:value-of select="ocena"/>
					</td>
				</tr>
			</xsl:for-each>
			</table>
			
			<xsl:value-of disable-output-escaping="yes" select=" concat(substring(@Title,1,5),$break, $break)" />
			<a href="zadanie.xml">plik XML</a>
			<xsl:value-of disable-output-escaping="yes" select=" concat(substring(@Title,1,5),$break, $break)" />
			<a href="style.xsl">plik XSL</a>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>