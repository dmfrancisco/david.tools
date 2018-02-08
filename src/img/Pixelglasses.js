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
      d="M21 26h50a6 6 0 0 1 6 6v28a6 6 0 0 1-6 6H59.796a6 6 0 0 1-5.422-3.43L51 55.453a5.533 5.533 0 0 0-10 0l-3.374 7.117A6 6 0 0 1 32.204 66H21a6 6 0 0 1-6-6V32a6 6 0 0 1 6-6zm6.5 33a6.5 6.5 0 1 0 0-13 6.5 6.5 0 0 0 0 13z"
    />
  </svg>
);

export default Pixelglasses;
