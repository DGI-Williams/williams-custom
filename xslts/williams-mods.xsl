<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:mods="http://www.loc.gov/mods/v3" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="mods" version="1.0">
<xsl:output indent="yes" method="html"/>

<xsl:template match="/">
<html>
<body>
  <xsl:choose>
    <xsl:when test="mods:modsCollection">
      <xsl:apply-templates select="mods:modsCollection/mods:mods"/>
    </xsl:when>
    <xsl:when test="mods:mods">
      <xsl:apply-templates select="mods:mods"/>
    </xsl:when>
  </xsl:choose>
</body>
</html>
</xsl:template>

<xsl:template match="mods:mods">
  <table class="modsContainer">
  <xsl:apply-templates/>
  </table>
  <!--hr/-->
</xsl:template>

<xsl:template match="mods:titleInfo/mods:title/text()">
  <tr>
    <td>Title</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject/mods:hierarchicalGeographic/text()">
  <tr>
    <td>Site</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:note[@type='operation']/text()">
  <tr>
    <td>Operation</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:note[@type='subop']/text()">
  <tr>
    <td>Suboperation</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:note[@type='unit']/text()">
  <tr>
    <td>Unit</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:note[@type='level']/text()">
  <tr>
    <td>Level</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:note[@type='lot']/text()">
  <tr>
    <td>Lot</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:note[@type='citation']/text()">
  <tr>
    <td>Citation</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject[not(mods:*)]/text()">
  <tr>
    <td>Subject/Keywords</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:name/mods:namePart[../mods:role/mods:roleTerm/text()='creator']">
  <tr>
    <td>Creator</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:name/mods:namePart[../mods:role/mods:roleTerm/text()='contributor']">
  <tr>
    <td>Contributor</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:name/mods:namePart[../mods:role/mods:roleTerm/text()='photographer']">
  <tr>
    <td>Source</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:name/mods:namePart[../mods:role/mods:roleTerm/text()='department']">
  <tr>
    <td>Department</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:language/mods:languageTerm/text()">
  <tr>
    <td>Language (<xsl:value-of select="@authority"/>)</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:identifier[@type='slide']/text()">
  <tr>
    <td>Slide</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:identifier[@type='batch']/text()">
  <tr>
    <td>Batch</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:identifier[@type='catalog']/text()">
  <tr>
    <td>Catalog</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:identifier[@type='analysis']/text()">
  <tr>
    <td>Analysis</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:identifier[@type='INAA']/text()">
  <tr>
    <td>INAA</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:identifier[@type='petrography']/text()">
  <tr>
    <td>Petrography</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:identifier[@type='vessel']/text()">
  <tr>
    <td>Vessel</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:accessCondition/text()">
  <tr>
    <td>Rights</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:typeOfResource/text()">
  <tr>
    <td>Type of Resource</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:dateCreated/text()">
  <tr>
    <td>Date Created</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject/mods:temporal/text()">
  <tr>
    <td>Time</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject/mods:geographic/text()">
  <tr>
    <td>Geographic</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject[@displayLabel='']/mods:topic/text()">
  <tr>
    <td>Unit</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject[@displayLabel='architectural feature']/mods:topic/text()">
  <tr>
    <td>Architectural Feature</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject[@displayLabel='discovery']/mods:topic/text()">
  <tr>
    <td>Type of Discovery</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject[@displayLabel='culture keywords']/mods:topic/text()">
  <tr>
    <td>Cultural Keywords</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject[@displayLabel='environmental keywords']/mods:topic/text()">
  <tr>
    <td>Soil Type</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:note[not(@type)]/text()">
  <tr>
    <td>Note</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:abstract/text()">
  <tr>
    <td>Description</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:physicalDescription/mods:note/text()">
  <tr>
    <td>Physical Description</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:physicalDescription/mods:form[@type='material']/text()">
  <tr>
    <td>Ceramic Type</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:location/mods:physicalLocation/text()">
  <tr>
    <td>Physical Location</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:location/mods:url/text()">
  <tr>
    <td>Url</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject/mods:cartographics/mods:coordinates">
  <tr><td colspan="2">
    <table>
      <tr>
        <td>Suboperation Description</td>
        <td><xsl:value-of select="../../mods:topic"/></td>
      </tr>
      <tr>
        <td>Coordinates</td>
        <td><xsl:value-of select="."/></td>
      </tr>
    </table>
  </td></tr>
</xsl:template>

<xsl:template match="mods:originInfo">
  <tr><td colspan="2">
    <table>
      <tr>
        <td>Date Captured</td>
        <td><xsl:value-of select="mods:dateCaptured"/></td>
      </tr>
      <tr>
        <td>Publisher</td>
        <td><xsl:value-of select="mods:publisher"/></td>
      </tr>
      <tr>
        <td>Place of Publication</td>
        <td><xsl:value-of select="mods:place/mods:placeTerm"/></td>
      </tr>
      <tr>
        <td>Date Published</td>
        <td><xsl:value-of select="mods:dateIssued"/></td>
      </tr>
    </table>
  </td></tr>
</xsl:template>

<xsl:template match="text()"/>

</xsl:stylesheet>
