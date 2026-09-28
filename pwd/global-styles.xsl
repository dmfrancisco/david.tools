<x:transform
  version="1.0"
  xmlns:x="http://www.w3.org/1999/XSL/Transform"
  xmlns:pwd="pwd"
>
  <x:template match="pwd:global-styles">
    <x:message>
      <x:text>Transforming global-styles element</x:text>
    </x:message>

    <style>
      * {
        margin: 0;
      }
      html {
        color-scheme: light dark;
        line-height: 1.35;
        -webkit-text-size-adjust: 100%;
      }
      html,
      body {
        background: var(--color-bg, Canvas);
        color: var(--color-text, CanvasText);
        height: 100%;
      }
      body {
        margin: 0;
        font-family: var(--font-sans-serif, sans-serif);
        cursor: default;
      }
      .dmfranc-nav {
        box-sizing: border-box;
        margin-bottom: 10vmin;
        padding: calc(var(--gutter)*3) calc(var(--gutter)*6);
        width: 100%;
      }
      .dmfranc-nav-list {
        display: grid;
        font-size: 0.93rem;
        grid-template-columns: repeat(2, minmax(0, 1fr));
        letter-spacing: 0.05em;
        list-style: none;
        padding: 0;
        text-transform: uppercase;
      }
      .dmfranc-nav-item:nth-child(even) {
        text-align: right;
      }
      .dmfranc-nav-link {
        color: inherit;
        display: inline-block;
        padding: 0.25rem;
        text-decoration: none;
      }
      .dmfranc-container {
        font-size: calc(var(--gutter)*2.16);
        font-weight: var(--font-weight, 400);
        letter-spacing: var(--letter-spacing, 0);
        margin: 0;
        max-width: 980px;
        padding: calc(var(--gutter)*6);
        padding-top: calc(var(--gutter)*2);
      }
      .dmfranc-main {
        width: calc(var(--gutter)*70);
        display: inline-block;
      }
      .dmfranc-main h1 {
        margin: calc(var(--gutter)*6) 0 calc(var(--gutter)*3);
        font-size: 1.3em;
        font-weight: 600;
      }
      .dmfranc-main h2 {
        margin: calc(var(--gutter)*9) 0 calc(var(--gutter)*3);
        font-size: 1.25em;
        font-weight: 600;
      }
      .dmfranc-main a {
        background-color: transparent;
        color: inherit;
      }
      .dmfranc-projects {
        max-width: calc(var(--gutter)*52);
        padding: 0;
        list-style-type: none;
        padding-left: 0;
      }
      .dmfranc-projects a {
        text-decoration: none;
      }
      .dmfranc-projects h3 {
        text-decoration: underline;
        margin: 0;
        font-size: inherit;
        font-weight: var(--font-weight, 400);
      }
      .dmfranc-projects span {
        display: inline-block;
        margin: var(--gutter) 0;
        border: 1px solid;
        padding: calc(var(--gutter)*0.4) var(--gutter);
        border-radius: calc(var(--gutter)*2);
        font-family: var(--font-monospace, monospace);
        font-size: calc(var(--gutter)*1.6);
      }
      .dmfranc-livro-de-reclamacoes {
        display: block;
        width: calc(var(--gutter)*15);
        max-width: 100%;
        fill: var(--color-text, CanvasText);
      }
      .dmfranc-legal {
        margin-top: calc(var(--gutter)*3);
        font-size: calc(var(--gutter)*1.5);
        max-width: calc(var(--gutter)*54);
      }
      .dmfranc-legal a {
        color: inherit;
        text-decoration: none;
      }
      .dmfranc-legal a:hover {
        text-decoration: underline;
        text-underline-position: under;
      }
      .dmfranc-u-mt {
        display: block;
        margin-top: calc(var(--gutter)*3);
      }
      ::selection {
        background: rgba(var(--color-select-rgb), 0.15);
      }
      ::-moz-selection {
        background: rgba(var(--color-select-rgb), 0.15);
      }
      a:focus {
        display: inline-block;
        outline: 4px solid var(--color-focus);
        outline-offset: 4px;
      }
      @media only screen and (min-width: 500px) {
        .dmfranc-nav-list {
          display: flex;
        }
        .dmfranc-nav-item,
        .dmfranc-nav-item:nth-child(even) {
          flex: 2;
          text-align: center;
        }
        .dmfranc-nav-item:first-child {
          flex: 1;
          text-align: left;
        }
        .dmfranc-nav-item:last-child {
          flex: 1;
          text-align: right;
        }
        .dmfranc-nav-item:first-child .dmfranc-nav-link {
          padding-left: 0;
        }
        .dmfranc-nav-item:last-child .dmfranc-nav-link {
          padding-right: 0;
        }
      }
      @media only screen and (min-width: 768px) {
        .dmfranc-nav-link {
          padding-left: 1.25rem;
          padding-right: 1.25rem;
        }
      }
      @media only screen and (max-width: 369px) {
        .dmfranc-container {
          font-size: calc(var(--gutter)*1.85);
          padding-left: calc(var(--gutter)*2);
          padding-right: calc(var(--gutter)*2);
        }
      }
      @media only screen and (max-width: 779px) {
        .dmfranc-main {
          width: 100%;
        }
        .dmfranc-nav,
        .dmfranc-container {
          padding-left: calc(var(--gutter)*3);
          padding-right: calc(var(--gutter)*3);
        }
      }
    </style>
  </x:template>
</x:transform>
