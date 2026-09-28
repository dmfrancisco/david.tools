<x:transform
  version="1.0"
  xmlns:x="http://www.w3.org/1999/XSL/Transform"
  xmlns:pwd="pwd"
>
  <x:template match="pwd:fonts">
    <x:message>
      <x:text>Transforming fonts element</x:text>
    </x:message>

    <style>
      @font-face {
        font-family: 'Inter';
        font-style:  normal;
        font-weight: 400;
        font-display: swap;
        src: url("./fonts/Inter-Regular.woff2?v=3.19") format("woff2"),
            url("./fonts/Inter-Regular.woff?v=3.19") format("woff");
      }
      @font-face {
        font-family: 'Inter';
        font-style:  normal;
        font-weight: 600;
        font-display: swap;
        src: url("./fonts/Inter-SemiBold.woff2?v=3.19") format("woff2"),
            url("./fonts/Inter-SemiBold.woff?v=3.19") format("woff");
      }
    </style>
  </x:template>
</x:transform>