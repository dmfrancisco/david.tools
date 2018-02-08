import React from "react";

const Spacehorse = props => (
  <svg width={92} height={92} style={{ background: "#eff1f5" }} {...props}>
    <g fill="none" fillRule="evenodd">
      <path fill="#F2F3F5" d="M0 93h92V83H0z" />
      <path fill="#E5E6EB" d="M0 0h92v83H0z" />
      <path
        fill="#222658"
        d="M66.635 69.656c-5.002-.19-12.23-2.518-15.617-13.455V83H7.528l13.637-33.974 3.09 18.301v-26l3.902-9.721L31.364 50.6V23.617l.685-1.708c2.908-8.223 9.717-11.035 9.717-11.035C46.457 3.534 51.018 0 51.018 0v9.993c12.603 2.155 10.78 4.866 20.91 44.185v9.61h-5.293v5.868zM54.99 32.2a3.973 3.973 0 1 0 0-7.945 3.973 3.973 0 0 0 0 7.945z"
      />
      <path fill="#616487" d="M7.527 83h43.491L92 93H47.834z" />
    </g>
  </svg>
);

export default Spacehorse;
