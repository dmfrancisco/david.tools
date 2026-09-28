<x:transform
  version="1.0"
  xmlns:x="http://www.w3.org/1999/XSL/Transform"
  xmlns:pwd="pwd"
  xmlns:pt="pwd:pt"
>
  <x:template match="pwd:purl">
    <x:message>
      <x:text>Transforming purl element</x:text>
    </x:message>

    <style pwd:reparent="head">
      .pwd-purl {
        align-items: center;
        border: 1px solid;
        box-sizing: border-box;
        display: inline-flex;
        gap: 1ch;
        max-width: 100%;
        padding: calc(var(--gutter)*0.4) calc(var(--gutter)*1.4) calc(var(--gutter)*0.6) var(--gutter);
        border-radius: calc(var(--gutter)*2);
      }
      .pwd-purl-button {
        all: unset;
        cursor: pointer;
        display: flex;
      }
      .pwd-purl-button:focus-visible {
        outline: 4px solid var(--color-focus, Highlight);
      }
      .pwd-purl-button svg {
        width: 0.85em;
        height: 0.85em;
      }
      .pwd-purl-value {
        all: unset;
        cursor: text;
        display: inline-block;
        font-family: var(--font-monospace, monospace);
        font-size: 1rem;
        min-width: 0;
      }
    </style>

    <div class="pwd-purl">
      <button class="pwd-purl-button" pwd:dialog-show="dialog-share" title="Share this website" pt:title="Partilhar este site">
        <x:copy-of select="document('includes/svg/info.svg')" />
      </button>
      <input class="pwd-purl-value" value="{@href}" size="{string-length(@href)}" onclick="this.select()" readonly="" aria-label="Share this website" pt:aria-label="Partilhar este site" />
    </div>
  </x:template>
</x:transform>
