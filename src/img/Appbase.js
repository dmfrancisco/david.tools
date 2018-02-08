import React from "react";

const Appbase = props => (
  <svg width={92} height={92} style={{ background: "#c3c4d1" }} {...props}>
    <g fill="none" fillRule="evenodd">
      <path
        fill="#222658"
        d="M20 22h52a2 2 0 0 1 2 2v44a2 2 0 0 1-2 2H20a2 2 0 0 1-2-2V24a2 2 0 0 1 2-2zm2 9v35h48V31H22zm1.5-3a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3zm5 0a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3zm5 0a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3z"
      />
      <path
        stroke="#222658"
        strokeLinecap="round"
        strokeLinejoin="round"
        strokeWidth={2}
        d="M35 54c2.215 2.175 5.715 3.262 10.5 3.262S53.785 56.175 56 54"
      />
      <circle cx={36} cy={42} r={4} fill="#222658" />
      <circle cx={55} cy={42} r={4} fill="#222658" />
    </g>
  </svg>
);

export default Appbase;
