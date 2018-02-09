import React from "react";

const Desligado = props => (
  <svg
    width={92}
    height={92}
    style={{ background: "#f2f3f5", color: "#e5e4e2" }}
    data-hover-bg
    {...props}>
    <g fill="#222658" style={{ color: "#121621" }} data-hover-fill fillRule="evenodd">
      <path d="M45.45 68.38c-12 0-21.76-9.76-21.76-21.76 0-6 2.51-11.79 6.89-15.89a2.76 2.76 0 0 1 3.76 4.02 16.27 16.27 0 0 0 11.1 28.12 16.27 16.27 0 0 0 11.3-27.93 2.75 2.75 0 0 1 3.84-3.96 21.6 21.6 0 0 1 6.63 15.64c0 12-9.76 21.76-21.76 21.76z" />
      <path d="M45.45 46.09a2.75 2.75 0 0 1-2.75-2.76V25.3a2.75 2.75 0 1 1 5.5 0v18.04a2.75 2.75 0 0 1-2.75 2.76z" />
    </g>
  </svg>
);

export default Desligado;
