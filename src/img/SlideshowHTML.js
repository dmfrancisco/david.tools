import React from "react";

const SlideshowHTML = props => (
  <svg
    width={64}
    height={64}
    style={{ background: "#dadbe3", color: "#d6d5cf" }}
    data-hover-bg
    viewBox="0 0 92 92"
    {...props}>
    <path
      fill="#222658"
      style={{ color: "#131313" }}
      data-hover-fill
      fillRule="evenodd"
      d="M19 23h54v5.7h-5.3V50c0 2.5-.5 5-2 7.1-1.6 2-4.3 2.9-6.7 3H48.6c.2 1.2.4 2.7 1.6 3.4 2.1 1 4.7.7 6.8-.2v5.1c-3.7 1.3-8 1-11.2-1.4a12 12 0 0 1-11.1 1.4v-5c2 .8 4.5 1.1 6.6 0 1.3-.5 1.5-2 1.7-3.3-4.2-.2-8.4.4-12.6-.5-4-.9-6-5.2-6-9V28.7H19V23zm10.5 5.7v20.5c0 1.5 0 3.1 1.2 4.2 1 1 2.3.9 3.6.9h23.5c1.3 0 2.7 0 3.6-.9 1.2-1 1.2-2.7 1.3-4.1V28.7H29.4z"
    />
  </svg>
);

export default SlideshowHTML;
