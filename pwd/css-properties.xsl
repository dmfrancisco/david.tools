<x:transform
  version="1.0"
  xmlns:x="http://www.w3.org/1999/XSL/Transform"
  xmlns:pwd="pwd"
>
  <x:template match="pwd:css-properties">
    <x:message>
      <x:text>Transforming css-properties element</x:text>
    </x:message>

    <style>
      :root {
        --gutter: 1vw;
        --color-bg: #fff;
        --color-text: #000;
        --color-text-rgb: 0,0,0;
        --color-link: #05b;
        --color-visited: #05b;
        --color-select-rgb: 56, 93, 234;
        --color-focus: rgba(56, 93, 234, 0.75);
        --font-sans-serif: 'Inter', ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif;
        --font-monospace: ui-monospace, SFMono-Regular, SF Mono, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
        --font-size: 1.05rem;
        --font-weight: 450;
        --letter-spacing: -0.01em;
      }
      @media (prefers-color-scheme: dark) {
        :root {
          --color-bg: #000;
          --color-text: #ddd;
          --color-text-rgb: 221,221,221;
          --color-link: #5cf;
          --color-visited: #5cf;
          --color-focus: var(--color-link);
        }
      }
      @media only screen and (max-width: 779px) {
        :root {
          --gutter: 1.5vw;
        }
      }
      @media only screen and (max-width: 599px) {
        :root {
          --gutter: 0.5rem;
        }
      }
      @media only screen and (min-width: 1024px) {
        :root {
          --gutter: 0.64rem;
        }
      }
    </style>
  </x:template>
</x:transform>
