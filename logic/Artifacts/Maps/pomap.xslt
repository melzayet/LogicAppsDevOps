<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"  exclude-result-prefixes="msxsl s0" version="1.0" xmlns:s0="http://Flat_File_Project.PurchaseOrder">
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