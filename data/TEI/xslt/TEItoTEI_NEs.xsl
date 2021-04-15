<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xs="http://www.w3.org/2001/XMLSchema"
        xmlns:math="http://www.w3.org/2005/xpath-functions/math"
        xmlns:t="http://www.tei-c.org/ns/1.0"
        exclude-result-prefixes="xs math"
        version="3.0" >
     
        <xsl:strip-space elements="*"/>
        
        <xsl:output method="xml" indent="yes" />
        
    <xsl:mode on-no-match="shallow-copy"/>
    

    <!--Umbennenung von s auf p-->
   <!-- <xsl:template match="//t:s">     
            <xsl:apply-templates/>    
    </xsl:template>-->
    
    
    
   
    <xsl:template match="//t:w">
          <xsl:choose>
              <xsl:when test="@pos='NE'"> 
                  <xsl:element name="rs" namespace="http://www.tei-c.org/ns/1.0">
                      <xsl:attribute name="type">place</xsl:attribute>
              <!--<xsl:element name="persName" namespace="http://www.tei-c.org/ns/1.0">-->
                  <xsl:value-of select="@norm"/>
              </xsl:element><xsl:text> </xsl:text>
              </xsl:when>
              <xsl:when test="@pos='.'">
                  <xsl:value-of select="."/>
              </xsl:when>
              <xsl:otherwise>
                  <xsl:value-of select="@norm"/><xsl:text> </xsl:text>
              </xsl:otherwise>
          </xsl:choose>
    </xsl:template>
    
 

    
    
    <xsl:template match="*//t:hi">
        <xsl:apply-templates/>
    </xsl:template>
   
    
     
   
</xsl:stylesheet>

