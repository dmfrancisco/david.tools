import React from "react";

const Blocks = props => (
  <svg width={92} height={92} viewBox="0 0 92 92" {...props}>
    <g fill="none" fillRule="evenodd">
      <path fill="#F0F0F3" d="M46 46h46v46H46z" />
      <path fill="#FFF" d="M46 46v46l46-46z" />
      <path fill="#C4C5D2" style={{ color: "#D9AEAF" }} data-hover-fill d="M0 46h46v46H0z" />
      <path fill="#E6E7EC" style={{ color: "#FFD8D5" }} data-hover-fill d="M0 46v46l46-46z" />
      <path fill="#5C5F83" style={{ color: "#D0021B" }} data-hover-fill d="M46 0h46v46H46z" />
      <path fill="#767997" style={{ color: "#FF2013" }} data-hover-fill d="M46 0v46L92 0z" />
      <path fill="#3C406B" style={{ color: "#3E3251" }} data-hover-fill d="M0 0h46v46H0z" />
      <path fill="#50537A" style={{ color: "#514663" }} data-hover-fill d="M0 0v46L46 0z" />
    </g>
  </svg>
);

export default Blocks;
