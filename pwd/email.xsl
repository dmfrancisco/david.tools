<x:transform
  version="1.0"
  xmlns:x="http://www.w3.org/1999/XSL/Transform"
  xmlns:pwd="pwd"
>
  <x:template match="pwd:email">
    <x:element name="script">
      <x:text>document.write("</x:text>
      <x:value-of select="translate(@value, 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz', 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm')" />
      <x:text><![CDATA[".replace(/[a-zA-Z]/g, function(c){return String.fromCharCode((c<="Z"?90:122)>=(c=c.charCodeAt(0)+13)?c:c-26);}));]]></x:text>
    </x:element>
    <noscript>[email protected]</noscript>
  </x:template>
</x:transform>