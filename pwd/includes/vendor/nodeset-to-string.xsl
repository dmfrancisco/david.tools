<!--
  Adapted from: https://github.com/iwyg/xml-nodeset-to-string

  Copyright 2011, Thomas Appel, http://thomas-appel.com, mail(at)thomas-appel.com
  dual licensed under MIT and GPL license
  http://dev.thomas-appel.com/licenses/mit.txt
  http://dev.thomas-appel.com/licenses/gpl.txt
-->
<x:transform
  version="1.0"
  xmlns:x="http://www.w3.org/1999/XSL/Transform"
>
  <x:variable name="q">
    <x:text>"</x:text>
  </x:variable>

  <x:variable name="empty"/>

  <x:template match="*" mode="selfclosetag">
    <x:text>&lt;</x:text>
    <x:value-of select="name()"/>
    <x:apply-templates select="@*" mode="attribs"/>
    <x:text>/&gt;</x:text>
  </x:template>

  <x:template match="*" mode="opentag">
    <x:text>&lt;</x:text>
    <x:value-of select="name()"/>
    <x:apply-templates select="@*" mode="attribs"/>
    <x:text>&gt;</x:text>
  </x:template>

  <x:template match="*" mode="closetag">
    <x:text>&lt;/</x:text>
    <x:value-of select="name()"/>
    <x:text>&gt;</x:text>
  </x:template>

  <x:template match="* | text()" mode="nodeset-to-string">
    <x:choose>
      <x:when test="boolean(name())">
        <x:choose>
          <!-- if element is not empty -->
          <x:when test="normalize-space(.) != $empty or *">
            <x:apply-templates select="." mode="opentag"/>
              <x:apply-templates select="* | text()" mode="nodeset-to-string"/>
            <x:apply-templates select="." mode="closetag"/>
          </x:when>
          <!-- assuming emty tags are self closing, e.g. <img/>, <source/>, <input/> -->
          <x:otherwise>
            <x:apply-templates select="." mode="selfclosetag"/>
          </x:otherwise>
        </x:choose>
      </x:when>
      <x:otherwise>
        <x:value-of select="."/>
      </x:otherwise>
    </x:choose>
  </x:template>

  <x:template match="@*" mode="attribs">
    <x:if test="position() = 1">
      <x:text> </x:text>
    </x:if>
    <x:value-of select="concat(name(), '=', $q, ., $q)"/>
    <x:if test="position() != last()">
      <x:text> </x:text>
    </x:if>
  </x:template>
</x:transform>