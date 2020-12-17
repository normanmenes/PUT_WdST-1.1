<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<body>
		<a href="../../index.html">Strona główna</a>
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
		
			
			<br/>
			
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
			
			<br> </br>
			<a href="zadanie.xml">plik XML</a>
			<br> </br>
			<a href="style.xsl">plik XSL</a>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>
