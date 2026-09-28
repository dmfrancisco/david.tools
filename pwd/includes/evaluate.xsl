<!--
  This template transforms a given node-set recursively until the transformations have no effect. This makes it possible to transform markup returned by matching templates the same way it happens for the source document.
-->
<x:transform
  version="1.0"
  xmlns:x="http://www.w3.org/1999/XSL/Transform"
  xmlns:ext="http://exslt.org/common"
  xmlns:pwd="pwd"
>
  <x:param name="max-recursion" select="10" />

  <x:template name="pwd:evaluate">
    <x:param name="count" select="0" />
    <x:param name="children" />

    <x:message>[<x:value-of select="$count" />] Evaluating…</x:message>

    <!-- Transform the given children and store in variable -->
    <x:variable name="output">
      <x:apply-templates select="ext:node-set($children)/*" />
    </x:variable>

    <!-- Convert the given children and the transformed output to string for comparison. There's probably a better way to compare two node-sets… -->
    <x:variable name="children-string">
      <x:apply-templates select="ext:node-set($children)/*" mode="nodeset-to-string" />
    </x:variable>
    <x:variable name="output-string">
      <x:apply-templates select="ext:node-set($output)/*" mode="nodeset-to-string" />
    </x:variable>

    <!-- If the input and output are the same or we reached maximum recursion, return. Otherwise transform the children one more time -->
    <x:choose>
      <x:when test="$output-string = $children-string or $count >= $max-recursion">
        <x:message>Finished evaluation.</x:message>
        <x:copy-of select="$output" />
      </x:when>
      <x:otherwise>
        <x:call-template name="pwd:evaluate">
          <x:with-param name="count" select="$count + 1" />
          <x:with-param name="children" select="$output" />
        </x:call-template>
      </x:otherwise>
    </x:choose>
  </x:template>
</x:transform>