<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    
    <xsl:output method="xml" version="1.0"
                encoding="UTF-8" indent="yes"/>			
    
    <xsl:template match="/">
        
        <Catalog>
            <xsl:for-each select="CATALOG/CD">
                <xsl:sort select="ARTIST"/>
                <Artist><xsl:value-of select="ARTIST"/></Artist>
                <Title><xsl:value-of select="TITLE"/></Title>
            </xsl:for-each>
        </Catalog>
        
    </xsl:template>
    
    
    
    
    
</xsl:stylesheet>