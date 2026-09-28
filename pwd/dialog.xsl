<x:transform
  version="1.0"
  xmlns:x="http://www.w3.org/1999/XSL/Transform"
  xmlns:pwd="pwd"
>
  <x:template match="*[@pwd:dialog]">
    <x:message>
      <x:text>Transforming dialog attribute: </x:text>
      <x:value-of select="@pwd:dialog" />
    </x:message>

    <style pwd:reparent="head">
      .pwd-dialog-container,
      .pwd-dialog-overlay {
        bottom: 0;
        left: 0;
        position: fixed;
        right: 0;
        top: 0;
      }
      .pwd-dialog-container {
        align-items: center;
        display: flex;
        margin: auto;
        max-width: 720px;
        outline: none; /* Fix focus ring on open in safari */
        z-index: 2;
      }
      .pwd-dialog-container[aria-hidden='true'] {
        display: none;
      }
      .pwd-dialog-overlay {
        background-color: var(--color-text, CanvasText);
        opacity: 0.75;
      }
      .pwd-dialog-content {
        background-color: var(--color-bg, Canvas);
        margin: var(--spacing-row, 1em);
        position: relative;
        width: 100%;
        z-index: 2;
      }
      .pwd-dialog-header {
        align-items: center;
        border-bottom: 1px solid rgba(var(--color-text-rgb, 0,0,0), 0.25);
        display: flex;
        justify-content: space-between;
      }
      .pwd-dialog-title {
        font-size: 0.95em;
        font-weight: 600;
        padding: 0.75rem 1.25rem;
      }
      .pwd-dialog-body {
        line-height: 1.25;
        padding: 1.25rem;
      }
      .pwd-dialog-button-close {
        all: unset;
        cursor: pointer;
        margin-left: auto;
        padding: 0.75rem 1.25rem;
      }
      .pwd-dialog-button-close:focus-visible {
        outline: 4px solid var(--color-focus, Highlight);
      }
      .pwd-dialog-button-close svg {
        height: 1ch;
        width: auto;
      }
    </style>

    <div aria-hidden="true" class="pwd-dialog-container" data-a11y-dialog="{@pwd:dialog}">
      <!-- The dialog title is optional but if present it should have an ID and the dialog container should have an aria-labelledby attribute -->
      <x:if test="title">
        <x:attribute name="aria-labelledby">
          <x:value-of select="@pwd:dialog" />
          <x:text>-title</x:text>
        </x:attribute>
      </x:if>

      <div class="pwd-dialog-overlay" data-a11y-dialog-hide=""></div>

      <div class="pwd-dialog-content" role="document">
        <div class="pwd-dialog-header">
          <x:if test="title">
            <h1 id="{@pwd:dialog}-title" class="pwd-dialog-title">
              <x:copy-of select="title/*|title/text()" />
            </h1>
          </x:if>

          <button class="pwd-dialog-button-close" type="button" data-a11y-dialog-hide="" aria-label="Close dialog">
            <x:copy-of select="document('includes/svg/cross.svg')" />
          </button>
        </div>

        <div class="pwd-dialog-body">
          <!-- Keep everything except the <title> -->
          <x:apply-templates select="*[not(self::title)]" />
        </div>
      </div>
    </div>

    <script pwd:reparent="body">
      <x:copy-of select="document('includes/vendor/a11y-dialog.html')/script/text()" />
    </script>
  </x:template>

  <x:template match="*[@pwd:dialog-show]">
    <x:copy>
      <x:copy-of select="@*[name() != 'pwd:dialog-show']" />

      <x:attribute name="data-a11y-dialog-show">
        <x:value-of select="@pwd:dialog-show" />
      </x:attribute>

      <x:apply-templates />
    </x:copy>
  </x:template>
</x:transform>