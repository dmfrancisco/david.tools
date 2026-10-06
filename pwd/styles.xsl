<x:transform
  version="1.0"
  xmlns:x="http://www.w3.org/1999/XSL/Transform"
  xmlns:pwd="pwd"
>
  <x:template match="pwd:styles">
    <x:message>
      <x:text>Transforming styles element</x:text>
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
        font-family: var(--font-sans-serif, sans-serif);
        font-kerning: normal;
        font-optical-sizing: auto;
        cursor: default;
        position: relative;
        isolation: isolate;
      }
      body::before {
        content: "";
        position: absolute;
        inset: 0 0 auto;
        height: clamp(24rem, 60vw, 42rem);
        z-index: -1;
        pointer-events: none;
        background:
          radial-gradient(
            ellipse 45% 70% at 95% 0%,
            rgb(255 177 132 / 22%),
            transparent 75%
          ),
          radial-gradient(
            ellipse 55% 80% at 70% -15%,
            rgb(142 117 255 / 28%),
            transparent 75%
          ),
          radial-gradient(
            ellipse 45% 65% at 35% 0%,
            rgb(99 218 235 / 20%),
            transparent 75%
          );
      }
      a {
        color: var(--color-link, LinkText);
        text-decoration: none;
      }
      a:hover {
        text-decoration: underline;
        text-underline-position: under;
      }
      a:visited {
        color: var(--color-visited, VisitedText);
      }
      ::selection {
        background: rgba(var(--color-select-rgb), 0.15);
      }
      ::-moz-selection {
        background: rgba(var(--color-select-rgb), 0.15);
      }
      :focus-visible {
        outline: 4px solid var(--color-focus, Highlight);
        outline-offset: 2px;
      }

      .nav {
        box-sizing: border-box;
        padding: calc(var(--gutter)*3) calc(var(--gutter)*4.5);
        width: 100%;
      }
      .nav-list {
        display: grid;
        font-size: 0.93rem;
        grid-template-columns: repeat(2, minmax(0, 1fr));
        letter-spacing: 0.05em;
        list-style: none;
        padding: 0;
        text-transform: uppercase;
      }
      .nav-item:nth-child(even) {
        text-align: right;
      }
      .nav-link {
        display: inline-block;
        font-weight: 500;
        padding: 0.25rem;
      }

      .main {
        font-size: calc(var(--gutter)*2.16);
        font-weight: var(--font-weight, 400);
        letter-spacing: var(--letter-spacing, 0);
        line-height: 1.45;
        overflow-wrap: anywhere;
        max-width: calc(var(--gutter)*80);
        margin: 0 auto;
        padding: calc(var(--gutter)*2 + max(10vmin, var(--gutter)*6))
          calc(var(--gutter)*4) calc(var(--gutter)*6 + 10vmin);
      }
      .main > * + * {
        margin-top: 1.5em;
      }
      .main > :first-child {
        margin-top: 0;
      }
      .main p,
      .project-description {
        text-wrap: pretty;
      }
      .main h1,
      .main h2,
      .main h3 {
        text-wrap: balance;
      }
      .main h1,
      .main h2 {
        margin: calc(var(--gutter)*6) 0 calc(var(--gutter)*3);
      }
      .main h1 {
        font-size: 1.5em;
        font-weight: 600;
      }
      .main h2 {
        font-size: 0.9em;
        font-weight: 400;
        letter-spacing: 0.03em;
        line-height: 1.25;
        padding-top: 0.5em;
        text-transform: uppercase;
      }

      .work-list,
      .education-list,
      .project-list {
        border-radius: var(--gutter);
        border: 1px solid rgba(var(--color-text-rgb, 0, 0, 0), 0.15);
        list-style: none;
        padding: 0;
      }
      .work-item,
      .education-item,
      .project-item {
        border-top: 1px solid rgba(var(--color-text-rgb, 0, 0, 0), 0.15);
        padding: 0.7em 1em 1em;
      }
      .work-item:first-child,
      .education-item:first-child,
      .project-item:first-child {
        border-top: none;
      }
      .work-time,
      .education-time,
      .project-time {
        font-size: 0.75em;
        font-weight: 500;
        opacity: 0.6;
        text-transform: uppercase;
      }
      .work-title,
      .education-title,
      .project-title {
        font-size: 1em;
        font-weight: 600;
      }
      .work-description,
      .education-description,
      .project-description,
      .project-links {
        font-size: 0.9em;
        margin-top: 0.15em;
      }
      .work-time {
        margin-right: 1em;
      }
      .project-item {
        display: flex;
      }
      .project-content {
        flex: 1;
        min-width: 0;
      }
      .project-title {
        display: inline-block;
        margin-right: 0.35em;
      }
      .project-link {
        display: inline-block;
        margin-right: 0.75em;
        text-decoration: underline;
        text-underline-position: under;
      }
      .project-logo {
        border: 1px solid #000;
        flex: none;
        height: 4rem;
        margin-left: 1em;
        margin-top: 0.5em;
        width: 4rem;
      }

      @media only screen and (min-width: 500px) {
        .nav-list {
          display: flex;
        }
        .nav-item,
        .nav-item:nth-child(even) {
          flex: 2;
          text-align: center;
        }
        .nav-item:first-child {
          flex: 1;
          text-align: left;
        }
        .nav-item:last-child {
          flex: 1;
          text-align: right;
        }
        .nav-item:first-child .nav-link {
          padding-left: 0;
        }
        .nav-item:last-child .nav-link {
          padding-right: 0;
        }
      }
      @media screen and (min-width: 46em) {
        .project-description > span {
          display: block;
        }
        .project-logo {
          height: 5rem;
          margin-left: 1.35em;
          width: 5rem;
        }
      }
      @media only screen and (max-width: 369px) {
        .main {
          font-size: calc(var(--gutter)*1.85);
        }
      }
      @media only screen and (max-width: 679px) {
        .nav,
        .main {
          padding-left: calc(var(--gutter)*3);
          padding-right: calc(var(--gutter)*3);
        }
        .main h1 {
          font-size: 1.3em;
        }
      }
      @media only screen and (max-width: 599px) {
        .main h1 {
          font-size: 1.4em;
        }
      }
    </style>
  </x:template>
</x:transform>
