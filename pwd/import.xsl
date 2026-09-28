<x:transform
  version="1.0"
  xmlns:x="http://www.w3.org/1999/XSL/Transform"
  xmlns:pwd="pwd"
>
  <!-- We set a higher priority because most of the time it makes more sense to perform the import before other transformations (an example where this is necessary is when importing the content of a dialog). About priorities: https://www.w3.org/TR/1999/REC-xslt-19991116#conflict -->
  <x:template match="pwd:import" priority="1">
    <x:message>
      <x:text>Transforming import element with src: </x:text>
      <x:value-of select="@src" />
    </x:message>

    <!-- Copy the imported root node name. Keep namespace if necessary (for example, SVGs) -->
    <x:element name="{name(document(@src)/node())}" namespace="{namespace-uri(document(@src)/node())}">
      <!-- Copy all attributes in that imported root node -->
      <x:copy-of select="document(@src)/node()/@*" />

      <!-- Copy attributes in <pwd:import> (may override the ones above) -->
      <x:copy-of select="@*[name() != 'src']" />

      <!-- Copy nodes inside the imported root node. We copy instead of apply-templates so they can be evaluated at the same time as the root imported node -->
      <x:copy-of select="document(@src)/node()/*" />
    </x:element>
  </x:template>
</x:transform>