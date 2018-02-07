import React from "react";

import "./Nav.css";

export default ({ items }) => (
  <nav className="Nav">
    <ul className="Nav-list">
      {items.map((item, index) => (
        <li key={item.text} className="Nav-item">
          <a href={item.href} className="Nav-item-link">
            {item.text}
          </a>
        </li>
      ))}
    </ul>
  </nav>
);
