import React from "react";

import "./Header.css";

export default ({ title, description }) => (
  <header className="Header u-container">
    <h1 className="Header-title">{title}</h1>
    <p className="Header-description">{description}</p>
  </header>
);
