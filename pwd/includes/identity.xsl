<x:transform
  version="1.0"
  xmlns:x="http://www.w3.org/1999/XSL/Transform"
  xmlns:pwd="pwd"
>
  <!-- Everything unmatched is copied without changes -->
  <x:template match="comment()|@*">
    <x:copy>
      <x:apply-templates select="node()|@*" />
    </x:copy>
  </x:template>

  <!-- Force remove the "xmlns:*" attributes -->
  <x:template match="*">
    <x:element name="{name()}" namespace="{namespace-uri()}">
      <x:apply-templates select="@*|node()" />
    </x:element>
  </x:template>
</x:transform>