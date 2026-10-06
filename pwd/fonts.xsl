<x:transform
  version="1.0"
  xmlns:x="http://www.w3.org/1999/XSL/Transform"
  xmlns:pwd="pwd"
>
  <x:template match="pwd:fonts">
    <x:message>
      <x:text>Transforming fonts element</x:text>
    </x:message>

    <link rel="preload" href="./fonts/InterVariable.woff2?v=4.1" as="font" type="font/woff2" crossorigin="anonymous" />

    <style>
      @font-face {
        font-family: 'Inter';
        font-style:  normal;
        font-weight: 100 900;
        font-display: block;
        src: url("./fonts/InterVariable.woff2?v=4.1") format("woff2");
      }
    </style>
  </x:template>
</x:transform>
