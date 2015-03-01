<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2015-03-01T18:52:55" version="1.0">
	<xsl:output encoding="UTF-8" method="xml"/>
	<xsl:template match="text() | *[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText">
		<xsl:copy-of select="."/>
	</xsl:template>
	<xsl:template match="/">
		<xsl:copy-of select="processing-instruction() | comment()"/>
		<xsl:choose>
			<xsl:when test="my:myFields">
				<xsl:apply-templates select="my:myFields" mode="_0"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:variable name="var">
					<xsl:element name="my:myFields"/>
				</xsl:variable>
				<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_0"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="my:etc" mode="_1">
		<xsl:copy>
			<xsl:element name="my:CreatedBy">
				<xsl:copy-of select="my:CreatedBy/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:CreatedDate">
				<xsl:copy-of select="my:CreatedDate/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:CurrentUserName">
				<xsl:copy-of select="my:CurrentUserName/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:CurrentUserLogin">
				<xsl:copy-of select="my:CurrentUserLogin/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:Debug">
				<xsl:apply-templates select="my:Debug/text() | my:Debug/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:element name="my:DocumentNumber">
				<xsl:copy-of select="my:DocumentNumber/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:ExceptionMessage">
				<xsl:apply-templates select="my:ExceptionMessage/text() | my:ExceptionMessage/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:element name="my:Filename">
				<xsl:copy-of select="my:Filename/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:FormVersion">
				<xsl:copy-of select="my:FormVersion/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:FormTemplateVersion">
				<xsl:copy-of select="my:FormTemplateVersion/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:History">
				<xsl:apply-templates select="my:History/text() | my:History/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:element name="my:isAdmin">
				<xsl:choose>
					<xsl:when test="my:isAdmin/text()[1]">
						<xsl:copy-of select="my:isAdmin/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:isNew">
				<xsl:choose>
					<xsl:when test="my:isNew/text()[1]">
						<xsl:copy-of select="my:isNew/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:isEmailSent">
				<xsl:choose>
					<xsl:when test="my:isEmailSent/text()[1]">
						<xsl:copy-of select="my:isEmailSent/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:myFields" mode="_0">
		<xsl:copy>
			<xsl:element name="my:AdminSection"/>
			<xsl:element name="my:ConditionalFormatting"/>
			<xsl:choose>
				<xsl:when test="my:etc">
					<xsl:apply-templates select="my:etc[1]" mode="_1"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:etc"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_1"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>