<x:transform
  version="1.0"
  xmlns:x="http://www.w3.org/1999/XSL/Transform"
  xmlns:pwd="pwd"
>
  <x:template match="pwd:qrcode">
    <x:message>
      <x:text>Transforming qrcode element</x:text>
    </x:message>

    <div>
      <!-- Copy all attributes except href, which we use -->
      <x:copy-of select="@*[local-name() != 'href']" />

      <!-- Keep href as a data attribute that we can use in JavaScript -->
      <x:if test="@href">
        <x:attribute name="data-qrcode-href">
          <x:value-of select="@href" />
        </x:attribute>
      </x:if>

      <script pwd:reparent="body">
        <x:copy-of select="document('includes/vendor/qrcode-compact.html')/script/text()" />

        document.querySelectorAll("[data-qrcode-href]").forEach(el => {
          const qrcode = new QRCode({
            background: "transparent",
            color: "currentcolor",
            container: "svg-viewbox",
            content: el.dataset.qrcodeHref,
            ecl: "L",
            join: true,
            padding: 0,
            xmlDeclaration: false
          });
          el.innerHTML = qrcode.svg();
        });
      </script>
    </div>
  </x:template>
</x:transform>