import React from "react";

import "./Projects.css";

export default ({ items }) => (
  <section className="u-container">
    <ol className="Projects">
      {items.map(item => (
        <li key={item.src} className="Project">
          <a href={item.href} hidden>
            {" "}
          </a>

          <div className="Project-img" />

          <div className="Project-content">
            <strong className="Project-title">{item.title}</strong>{" "}
            <em className="Project-year">{item.year}</em>
            <br />
            <span className="Project-description">{item.description}</span>
            <br />
            <a href="/" className="Project-link">
              Open website
            </a>{" "}
            <a href="/" className="Project-link">
              Read notes
            </a>{" "}
            <a href="/" className="Project-link">
              View source
            </a>
          </div>
        </li>
      ))}
    </ol>
  </section>
);
