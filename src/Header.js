import React from "react";

import "./Header.css";

export default ({ title, description }) => (
  <header className="Header u-container">
    <h1 className="Header-title u-content">{title}</h1>
    <p className="Header-description u-content">{description}</p>
  </header>
);
