<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:month="http://month.com">
    <xsl:output method="text" />
    <xsl:strip-space elements="*" />
    
    <xsl:template match="//text/body">
        <xsl:apply-templates/>
    </xsl:template>
    
    
</xsl:stylesheet>

