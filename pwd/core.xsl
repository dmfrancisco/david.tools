<!--
  This template matches the root, calls the main template (assumed to exist) and calls post-processing templates
-->
<x:transform
  version="1.0"
  xmlns:x="http://www.w3.org/1999/XSL/Transform"
  xmlns:ext="http://exslt.org/common"
  xmlns:pwd="pwd"
  exclude-result-prefixes="ext pwd"
>
  <x:include href="includes/identity.xsl" />
  <x:include href="includes/vendor/nodeset-to-string.xsl" />
  <x:include href="includes/evaluate.xsl" />
  <x:include href="includes/post-transforms/identity.xsl" />
  <x:include href="includes/post-transforms/reparent.xsl" />
  <x:include href="includes/tests/identity.xsl" />

  <!-- Don't set the output method. It defaults to XML unless the root element is <html> -->
  <x:output omit-xml-declaration="yes" indent="yes" encoding="utf-8" />

  <!-- Add a doctype to all files -->
  <x:output doctype-system="about:legacy-compat" />

  <x:template match="/">
    <!-- Call the main template and transform recursively until there's no remaining transformations -->
    <x:variable name="result">
      <x:call-template name="pwd:evaluate">
        <x:with-param name="children">
          <x:call-template name="main" />
        </x:with-param>
      </x:call-template>
    </x:variable>

    <!-- Do a final pass with a different mode for final markup transformations (such as moving elements to the head and end of body) -->
    <x:variable name="output">
      <x:apply-templates select="ext:node-set($result)/*" mode="post-transform" />
    </x:variable>

    <!-- You can use this mode for testing the output and throw an error if it doesn't match what is expected using <x:message terminate="yes" />. Nothing gets added to the output -->
    <x:message>Running tests…</x:message>
    <x:variable name="test">
      <x:apply-templates select="ext:node-set($output)/*" mode="test" />
    </x:variable>

    <x:copy-of select="$output" />
  </x:template>
</x:transform>