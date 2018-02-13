import React from "react";

const Spacehorse = props => (
  <svg width={64} height={64} style={{ background: "#eff1f5" }} viewBox="0 0 92 92" {...props}>
    <g fill="none" fillRule="evenodd">
      <path fill="#F2F3F5" style={{ color: "#F9F8D8" }} data-hover-fill d="M0 93h92V83H0z" />
      <path fill="#E5E6EB" style={{ color: "#FDE583" }} data-hover-fill d="M0 0h92v83H0z" />
      <path
        fill="#222658"
        d="M67 70c-5-1-13-3-16-14v27H8l13-34 3 18V41l4-9 3 19V24l1-2c3-8 10-11 10-11 4-7 9-11 9-11v10c13 2 11 5 21 44v10h-5v6zM55 32a4 4 0 1 0 0-8 4 4 0 0 0 0 8z"
      />
      <path fill="#616487" d="M8 83h43l41 10H48z" />
    </g>
  </svg>
);

export default Spacehorse;
