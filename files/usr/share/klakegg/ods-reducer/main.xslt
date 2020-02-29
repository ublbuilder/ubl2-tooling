<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
                xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
                xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0"
                xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0"
                xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0"
                xmlns:form="urn:oasis:names:tc:opendocument:xmlns:form:1.0"
                xmlns:calcext="urn:org:documentfoundation:names:experimental:calc:xmlns:calcext:1.0">

    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="no"/>

    <xsl:template match="office:automatic-styles | office:font-face-decls | office:scripts | office:annotation | @office:value-type | office:forms | @office:string-value | @office:value"/>
    <xsl:template match="table:calculation-settings | table:named-expressions | @table:style-name | @table:formula | @table:default-cell-style-name | table:table-column"/>
    <xsl:template match="table:table-cell[@table:number-columns-repeated &gt; 20]"/>
    <xsl:template match="table:table-row[@table:number-rows-repeated &gt; 20]"/>
    <xsl:template match="@draw:* | @svg:* | @calcext:* | @form:*"/>

    <xsl:template match="@*|node()" priority="-100">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>