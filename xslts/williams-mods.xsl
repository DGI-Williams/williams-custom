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

<xsl:template match="mods:titleInfo/mods:title">
  <tr>
    <td>Title</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject/mods:hierarchicalGeographic">
  <tr>
    <td>Site</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:note[@type='operation']">
  <tr>
    <td>Operation</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:note[@type='subop']">
  <tr>
    <td>Suboperation</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:note[@type='unit']">
  <tr>
    <td>Unit</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:note[@type='level']">
  <tr>
    <td>Level</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:note[@type='lot']">
  <tr>
    <td>Lot</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:note[@type='citation']">
  <tr>
    <td>Citation</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject[not(mods:*)]">
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

<xsl:template match="mods:language/mods:languageTerm">
  <tr>
    <td>Language (<xsl:value-of select="@authority"/>)</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:identifier[@type='slide']">
  <tr>
    <td>Slide</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:identifier[@type='batch']">
  <tr>
    <td>Batch</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:identifier[@type='catalog']">
  <tr>
    <td>Catalog</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:identifier[@type='analysis']">
  <tr>
    <td>Analysis</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:identifier[@type='INAA']">
  <tr>
    <td>INAA</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:identifier[@type='petrography']">
  <tr>
    <td>Petrography</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:identifier[@type='vessel']">
  <tr>
    <td>Vessel</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:accessCondition">
  <tr>
    <td>Rights</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:typeOfResource">
  <tr>
    <td>Type of Resource</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:dateCreated">
  <tr>
    <td>Date Created</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject/mods:temporal">
  <tr>
    <td>Time</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject/mods:geographic">
  <tr>
    <td>Geographic</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject[@displayLabel='']/mods:topic">
  <tr>
    <td>Unit</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject[@displayLabel='architectural feature']/mods:topic">
  <tr>
    <td>Architectural Feature</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject[@displayLabel='discovery']/mods:topic">
  <tr>
    <td>Type of Discovery</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject[@displayLabel='culture keywords']/mods:topic">
  <tr>
    <td>Cultural Keywords</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject[@displayLabel='environmental keywords']/mods:topic">
  <tr>
    <td>Soil Type</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:note[not(@type)]">
  <tr>
    <td>Note</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:abstract">
  <tr>
    <td>Description</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:physicalDescription/mods:note">
  <tr>
    <td>Physical Description</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:physicalDescription/mods:form[@type='material']">
  <tr>
    <td>Ceramic Type</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:location/mods:physicalLocation">
  <tr>
    <td>Physical Location</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:location/mods:url">
  <tr>
    <td>Url</td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

<xsl:template match="mods:subject/mods:cartographics/mods:coordinates">
  <tr colspan="2">
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
  </tr>
</xsl:template>

<xsl:template match="mods:originInfo">
  <tr colspan="2">
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
  </tr>
</xsl:template>

<xsl:template match="text()"/>

</xsl:stylesheet>
