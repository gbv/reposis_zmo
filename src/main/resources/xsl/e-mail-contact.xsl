<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

  <xsl:output method="xml" encoding="UTF-8" />
  <xsl:param name="MCR.mir-module.EditorMail" />

  <xsl:template match="/contactMail">
    <xsl:if test="approvement='true'">
      <email>
        <from>
          <xsl:value-of select="concat(to_name, '&lt;', to_mail, '&gt;')" />
        </from>
        <to>
          <xsl:value-of select="$MCR.mir-module.EditorMail" />
        </to>
        <bcc>
          <xsl:value-of select="concat(to_name, '&lt;', to_mail, '&gt;')" />
        </bcc>
        <subject>
          <xsl:value-of select="concat('[ZMO - Kontaktformular] ', subject)" />
        </subject>
        <body>
          <xsl:value-of select="body" />
        </body>
      </email>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
