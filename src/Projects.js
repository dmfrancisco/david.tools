import React from "react";

import "./Projects.css";

export default ({ items }) => (
  <section className="u-container">
    <ol className="Projects">
      {items.map(item => (
        <li key={item.title} className="Project">
          <a href={item.link || item.post || item.code} className="Project-linkMask" aria-hidden>
            {" "}
          </a>

          <item.logo className="Project-logo" />

          <div className="Project-content">
            <h2 className="Project-title">{item.title}</h2>{" "}
            <em className="Project-year">{item.year}</em>
            <div className="Project-description">
              <span className="u-rbr">{item.description}</span> {item.details}
            </div>
            <div className="Project-links">
              {item.link && (
                <a href={item.link} className="Project-link">
                  <span>Open website</span>{" "}
                </a>
              )}
              {item.post && (
                <a href={item.post} className="Project-link">
                  <span>Read notes</span>{" "}
                </a>
              )}
              {item.code && (
                <a href={item.code} className="Project-link">
                  <span>View source</span>
                </a>
              )}
            </div>
          </div>
        </li>
      ))}
    </ol>
  </section>
);
