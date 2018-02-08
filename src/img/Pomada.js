import React from "react";

const Pomada = props => (
  <svg width={92} height={92} style={{ background: "#f2f3f5" }} {...props}>
    <g fill="none" fillRule="evenodd">
      <rect width={38} height={38} x={27} y={27} fill="#222658" rx={3.68} />
      <text fill="#C3C4D1" fontFamily="ZapfDingbatsITC, Zapf Dingbats" fontSize={24.38}>
        <tspan x={36} y={54}>
          ✔
        </tspan>
      </text>
    </g>
  </svg>
);

export default Pomada;
