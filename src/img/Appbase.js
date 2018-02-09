import React from "react";

const Appbase = props => (
  <svg
    width={92}
    height={92}
    style={{ background: "#c3c4d1", color: "#e5e5e5" }}
    data-hover-bg
    viewBox="0 0 92 92"
    {...props}>
    <g fill="none" fillRule="evenodd">
      <rect width={56} height={48} x={18} y={22} fill="#222658" rx={2} />
      <path fill="#C3C4D1" style={{ color: "#E5E5E5" }} data-hover-fill d="M22 31h48v35H22z" />
      <circle cx="24" cy="27" r={1.5} fill="#C3C4D1" style={{ color: "#FF6159" }} data-hover-fill />
      <circle cx="29" cy="27" r={1.5} fill="#C3C4D1" style={{ color: "#FFC12E" }} data-hover-fill />
      <circle cx="34" cy="27" r={1.5} fill="#C3C4D1" style={{ color: "#29CB42" }} data-hover-fill />
      <path
        stroke="#222658"
        strokeLinecap="round"
        strokeLinejoin="round"
        strokeWidth={2}
        d="M35 54c2 2 6 3 11 3 4 0 8-1 10-3"
      />
      <circle cx={36} cy={42} r={4} fill="#222658" />
      <circle cx={55} cy={42} r={4} fill="#222658" />
    </g>
  </svg>
);

export default Appbase;
