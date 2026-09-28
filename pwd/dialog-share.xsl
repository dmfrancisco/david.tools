<x:transform
  version="1.0"
  xmlns:x="http://www.w3.org/1999/XSL/Transform"
  xmlns:pwd="pwd"
  xmlns:pt="pwd:pt"
>
  <x:template match="pwd:dialog-share">
    <div pwd:dialog="dialog-share">
      <title>
        <pwd:trans>Share</pwd:trans>
        <pt:trans>Partilhar</pt:trans>
      </title>

      <style pwd:reparent="head">
        .pwd-dialog-share-subtitle {
          font-size: 1.15em;
          line-height: 1;
          margin-bottom: 1.25rem;
        }
        .pwd-dialog-share-input {
          all: unset;
          border: 1px solid;
          box-sizing: border-box;
          cursor: text;
          margin-top: 1.25rem;
          padding: 0.5rem;
          width: 100%;
        }
        .pwd-dialog-share-input:focus-visible {
          outline: 4px solid var(--color-focus, Highlight);
        }
        .pwd-dialog-share-qrcode svg {
          display: block;
          margin-top: 1.25rem;

          /* Make sure to use a multiple of the viewBox size of the SVG. Using "shape-rendering: auto" may help for small sizes in low-pixel density displays */
          height: calc(256px / 2);
          width: auto;
        }
      </style>

      <h2 class="pwd-dialog-share-subtitle">
        <x:value-of select="$title-with-site-name" />
      </h2>
      <p>
        <pwd:trans>Use this permanent link for a bookmark or if you cite this page:</pwd:trans>
        <pt:trans>Utilize este endereço para citar ou adicionar aos seus favoritos:</pt:trans>
      </p>
      <input class="pwd-dialog-share-input" type="text" value="{$persistent-url}" readonly="" onclick="this.select()" />
      <pwd:qrcode class="pwd-dialog-share-qrcode" href="{$persistent-url}" />
    </div>
  </x:template>
</x:transform>