<x:transform
  version="1.0"
  xmlns:x="http://www.w3.org/1999/XSL/Transform"
  xmlns:pwd="pwd"
  xmlns:ext="http://exslt.org/common"
  exclude-result-prefixes="ext"
>
  <x:template name="about-content">
    <style pwd:reparent="head">
      .dmfranc-about {
        line-height: 1.45;
        margin-top: 1.5em;
      }
      .dmfranc-about > * + * {
        margin-top: 1.5em;
      }
      .dmfranc-about a[href^="http"]::after {
        content: "↗";
        vertical-align: text-top;
        padding-left: 0.25ch;
        font-family: var(--font-sans-serif, sans-serif);
        display: inline-block;
        text-decoration: none;
      }
      .dmfranc-about .work,
      .dmfranc-about .education,
      .dmfranc-about .project {
        list-style: none;
        padding: 0;
      }
      .dmfranc-about .work-item,
      .dmfranc-about .education-item,
      .dmfranc-about .project-item {
        margin-top: 1em;
      }
      .dmfranc-about .work-time,
      .dmfranc-about .education-time,
      .dmfranc-about .project-time {
        font-size: 0.75em;
        font-weight: 500;
        opacity: 0.6;
        text-transform: uppercase;
      }
      .dmfranc-about .work-title,
      .dmfranc-about .education-title,
      .dmfranc-about .project-title {
        font-size: 1em;
        font-weight: 600;
      }
      .dmfranc-about .work-desc,
      .dmfranc-about .education-desc,
      .dmfranc-about .project-desc,
      .dmfranc-about .project-links {
        font-size: 0.9em;
        margin-top: 0.15em;
      }
      .dmfranc-about .work-time {
        margin-right: 1em;
      }
      .dmfranc-about .project-item {
        display: flex;
        margin-top: 1.5em;
      }
      .dmfranc-about .project-content {
        flex: 1;
        min-width: 0;
      }
      .dmfranc-about .project-title {
        display: inline-block;
        margin-right: 0.35em;
      }
      .dmfranc-about .project-link {
        display: inline-block;
        margin-right: 0.75em;
      }
      .dmfranc-about .project-logo {
        border: 1px solid #000;
        flex: none;
        height: 4rem;
        margin-left: 1em;
        margin-top: 0.5em;
        width: 4rem;
      }
      @media screen and (min-width: 46em) {
        .dmfranc-about .project-desc > span {
          display: block;
        }
        .dmfranc-about .project-logo {
          height: 5rem;
          margin-left: 1.35em;
          width: 5rem;
        }
      }
    </style>

    <div class="dmfranc-about">
      <h1>
        Hello! I’m David Francisco, a designer and engineer.
      </h1>

      <p>
        I’ve spent more than a decade designing and building web products, including programming tools for children, platforms for startups, and projects in cultural heritage. I like understanding what people are trying to do and what’s getting in their way before deciding what to build. My work spans shaping the user experience, designing interfaces, and implementing them.
      </p>

      <h2 id="work">Work experience</h2>

      <ol class="work visited">
        <x:for-each select="ext:node-set($work-items)/items/item">
          <li class="work-item">
            <span class="work-time"><x:value-of select="period" /></span>
            <h3 class="work-title"><x:copy-of select="title/node()" /></h3>
            <p class="work-desc"><x:copy-of select="description/node()" /></p>
          </li>
        </x:for-each>
      </ol>

      <h2 id="education">Education</h2>
      <ol class="education">
        <x:for-each select="ext:node-set($education-items)/items/item">
          <li class="education-item">
            <span class="education-time"><x:value-of select="period" /></span>
            <h3 class="education-title"><x:value-of select="institution" /></h3>
            <p class="education-desc"><x:value-of select="degree" /></p>
          </li>
        </x:for-each>
      </ol>

      <h2 id="projects">Side projects</h2>
      <p>
        I create open source side-projects whenever possible. Because they are done in my free time, they are usually incomplete and not as well-crafted as I would like. Here are some of my favorites.
      </p>

      <ol class="project">
        <x:for-each select="ext:node-set($project-items)/items/item">
          <li class="project-item">
            <div class="project-content">
              <h3 class="project-title"><x:copy-of select="title/node()" /></h3>
              <span class="project-time"><x:value-of select="@year" /></span>
              <div class="project-desc">
                <span class="md:block"><x:copy-of select="summary/node()" /></span>
                <x:text> </x:text>
                <x:copy-of select="description/node()" />
              </div>
              <div class="project-links">
                <x:for-each select="links/link">
                  <a href="{@href}" class="project-link"><x:value-of select="." /></a>
                </x:for-each>
              </div>
            </div>
            <pwd:import src="{@logo}" class="project-logo" />
          </li>
        </x:for-each>
      </ol>
    </div>
  </x:template>
</x:transform>
