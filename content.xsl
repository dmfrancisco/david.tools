<x:transform version="1.0" xmlns:x="http://www.w3.org/1999/XSL/Transform" xmlns:pwd="pwd"
  xmlns:ext="http://exslt.org/common" exclude-result-prefixes="ext">
  <x:template name="content">
    <h1>
      Hello! I’m David Francisco, a designer and engineer.
    </h1>

    <p>
      I’ve spent more than a decade making web products, including programming tools for children, platforms for startups, and digital experiences for cultural heritage. The work I enjoy most starts while the problem is still open, then moves into designing and building the interface that people need.
    </p>

    <nav class="nav" aria-label="Social and contact links">
      <ul class="nav-list">
        <x:for-each select="ext:node-set($social-links)/links/link">
          <li class="nav-item">
            <a class="nav-link" href="{@href}" aria-label="{@label}" title="{@label}">
              <pwd:import src="{@icon}" class="nav-icon" aria-hidden="true" focusable="false" />
            </a>
          </li>
        </x:for-each>
      </ul>
    </nav>

    <h2 id="work">Work experience</h2>

    <ol class="work-list">
      <x:for-each select="ext:node-set($work-items)/items/item">
        <li class="work-item">
          <span class="work-time"><x:value-of select="period" /></span>
          <h3 class="work-title"><x:copy-of select="title/node()" /></h3>
          <p class="work-description"><x:copy-of select="description/node()" /></p>
        </li>
      </x:for-each>
    </ol>

    <h2 id="education">Education</h2>
    <ol class="education-list">
      <x:for-each select="ext:node-set($education-items)/items/item">
        <li class="education-item">
          <span class="education-time"><x:value-of select="period" /></span>
          <h3 class="education-title"><x:value-of select="institution" /></h3>
          <p class="education-description"><x:value-of select="degree" /></p>
        </li>
      </x:for-each>
    </ol>

    <h2 id="projects">Side projects</h2>

    <ol class="project-list">
      <x:for-each select="ext:node-set($project-items)/items/item">
        <li class="project-item">
          <div class="project-content">
            <h3 class="project-title"><x:copy-of select="title/node()" /></h3>
            <span class="project-time"><x:value-of select="@year" /></span>
            <div class="project-description">
              <span><x:copy-of select="summary/node()" /></span>
              <x:text> </x:text>
              <x:copy-of select="description/node()" />
            </div>
            <div class="project-links">
              <x:for-each select="links/link">
                <a href="{@href}" class="project-link" aria-label="{normalize-space(.)} for {normalize-space(../../title)}"><x:value-of select="." /></a>
              </x:for-each>
            </div>
          </div>
          <pwd:import src="{@logo}" class="project-logo" aria-hidden="true" focusable="false" />
        </li>
      </x:for-each>
    </ol>
  </x:template>
</x:transform>
