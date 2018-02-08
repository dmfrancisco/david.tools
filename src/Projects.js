import React from "react";

import "./Projects.css";

export default ({ items }) => (
  <section className="u-container">
    <ol className="Projects">
      {items.map(item => (
        <li key={item.title} className="Project">
          <a href={item.link || item.post || item.code} hidden className="Project-linkMask">
            {" "}
          </a>

          <item.logo className="Project-logo" />

          <div className="Project-content">
            <strong className="Project-title">{item.title}</strong>{" "}
            <em className="Project-year">{item.year}</em>
            <br />
            <span className="Project-description">
              <span className="u-rbr">{item.description}</span> {item.details}
            </span>
            <br />
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
        </li>
      ))}
    </ol>
  </section>
);
