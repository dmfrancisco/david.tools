import React from "react";

const Pomada = props => (
  <svg
    width={64}
    height={64}
    style={{ background: "#f2f3f5", color: "#e6e6e6" }}
    data-hover-bg
    viewBox="0 0 92 92"
    {...props}>
    <g fill="none" fillRule="evenodd">
      <rect
        width={38}
        height={38}
        x={27}
        y={27}
        fill="#222658"
        style={{ color: "#191919" }}
        data-hover-fill
        rx={3.68}
      />
      <path
        fill="#C3C4D1"
        style={{ color: "#EBDE66" }}
        data-hover-fill
        d="M55.8 38.5a4 4 0 0 1-1.3 2.7l-.1.2L47 49c-1.5 1.7-2.8 3-4 3.8-1 1-1.8 1.4-2.3 1.4-.5 0-1-.3-1.7-.7-.8-.4-1.2-1-1.4-1.4a35 35 0 0 1-.7-6.7c0-.8.3-1.6 1-2.3.7-.6 1.4-1 2.2-1 .8 0 1.3.7 1.4 2.2A87 87 0 0 0 42 47c.2.5.4.7.7.7l.7-.4 1.1-1 7.6-7.5a11 11 0 0 1 1.7-1.5c.5-.3 1-.5 1.3-.5.2 0 .4.1.5.3l.2 1v.4z"
      />
    </g>
  </svg>
);

export default Pomada;
