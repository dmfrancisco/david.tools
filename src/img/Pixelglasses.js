import React from "react";

const Pixelglasses = props => (
  <svg
    width={92}
    height={92}
    style={{ background: "#f2f3f5", color: "#f2ede5" }}
    data-hover-bg
    {...props}>
    <path
      fill="#8E90AA"
      style={{ color: "#FFD54F" }}
      data-hover-fill
      fillRule="evenodd"
      d="M21 26h50c3 0 6 3 6 6v28c0 3-3 6-6 6H60c-3 0-5-1-6-3l-3-8a6 6 0 0 0-10 0l-3 8c-1 2-3 3-6 3H21c-3 0-6-3-6-6V32c0-3 3-6 6-6zm7 33a6 6 0 1 0 0-13 6 6 0 0 0 0 13z"
    />
  </svg>
);

export default Pixelglasses;
