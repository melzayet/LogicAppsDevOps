<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0" version="1.0" xmlns:s0="http://Flat_File_Project.PurchaseOrder">
  <xsl:import href="https://az818438.vo.msecnd.net/functoids/functoidsscript.xslt" />
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/s0:PO" />
  </xsl:template>
  <xsl:template match="/s0:PO">
    <PurchaseOrder>
      <xsl:for-each select="customer">
        <Customers>
          <Customer>
            <xsl:value-of select="." />
          </Customer>
        </Customers>
      </xsl:for-each>
      <Items>
        <xsl:copy-of select="items/@*" />
        <xsl:copy-of select="items/*" />
      </Items>
    </PurchaseOrder>
  </xsl:template>
</xsl:stylesheet>