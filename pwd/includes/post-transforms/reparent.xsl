<!--
  These templates seeks to move elements to the end of head (such as styles) or to the end of body (such as scripts) for performance and standards compliance. It also removes duplicates: if multiple elements have the same `text()` content only one will be kept.
-->
<x:transform
  version="1.0"
  xmlns:x="http://www.w3.org/1999/XSL/Transform"
  xmlns:pwd="pwd"
>
  <!-- Copy all elements with pwd:reparent="head" to end of <head> -->
  <x:template match="head" mode="post-transform">
    <x:copy>
      <x:copy-of select="@*" />

      <x:apply-templates mode="post-transform" />

      <x:for-each select="//*[@pwd:reparent = 'head']">
        <!-- If there's no preceding element with same reparent attribute, same element name and same text, append it -->
        <x:if test="not(preceding::*[@pwd:reparent = 'head' and name() = name(current())]/text() = text())">
          <x:element name="{name()}">
            <x:copy-of select="@*[name() != 'pwd:reparent']|text()" />
          </x:element>
        </x:if>
      </x:for-each>
    </x:copy>
  </x:template>

  <!-- Copy all elements with pwd:reparent="body" to end of <body> -->
  <x:template match="body" mode="post-transform">
    <x:copy>
      <x:copy-of select="@*" />

      <x:apply-templates mode="post-transform" />

      <x:for-each select="//*[@pwd:reparent = 'body']">
        <!-- If there's no preceding element with same reparent attribute, same element name and same text, append it -->
        <x:if test="not(preceding::*[@pwd:reparent = 'body' and name() = name(current())]/text() = text())">
          <x:element name="{name()}">
            <x:copy-of select="@*[name() != 'pwd:reparent']|text()" />
          </x:element>
        </x:if>
      </x:for-each>
    </x:copy>
  </x:template>

  <!-- We can ignore any elements with pwd:reparent that show up -->
  <x:template match="*[@pwd:reparent]" mode="post-transform" />
</x:transform>