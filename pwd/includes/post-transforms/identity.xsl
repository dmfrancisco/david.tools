<x:transform
  version="1.0"
  xmlns:x="http://www.w3.org/1999/XSL/Transform"
>
  <!-- Everything unmatched is copied without changes -->
  <x:template match="node()|@*" mode="post-transform">
    <x:copy>
      <x:apply-templates select="node()|@*" mode="post-transform" />
    </x:copy>
  </x:template>
</x:transform>