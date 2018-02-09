import React from "react";

const Spacejunk = props => (
  <svg
    xmlnsXlink="http://www.w3.org/1999/xlink"
    width={92}
    height={92}
    style={{ background: "#c3c4d1", color: "#e2ba50" }}
    data-hover-bg
    {...props}>
    <defs>
      <path id="a" d="M56.2 31.2h33.3v56.5H56.2z" />
    </defs>
    <g fill="none" fillRule="evenodd">
      <ellipse
        cx={37.047}
        cy={80.516}
        fill="#F2F3F5"
        style={{ color: "#EFEBE2" }}
        data-hover-fill
        rx={29.02}
        ry={28.245}
      />
      <path
        fill="#8E90AA"
        style={{ color: "#E0583B" }}
        data-hover-fill
        fillRule="nonzero"
        d="M8.3 111.8c9.4-4.3 20.3-11 31-19A168.7 168.7 0 0 0 70 64.3c3.3-4.1 5.5-7.8 6.6-10.6a8.7 8.7 0 0 0 .7-3v.3c.2 0 .2.2.3.2l-.3-.1a8 8 0 0 0-2.7-.2c-3 .2-7 1.3-11.8 3.2-10.4 4-23.3 11.5-36 21A168.7 168.7 0 0 0-4 103.7c-2 2.4-3.5 4.7-4.7 6.7-2-7.6 13.3-25.8 35.9-42.4 24.1-17.6 47.5-26.6 52.2-20 4.8 6.5-11 26-35.1 43.7a146 146 0 0 1-36 20z"
      />
      <mask id="b" fill="#fff">
        <use xlinkHref="#a" />
      </mask>
      <path
        fill="#F2F3F5"
        style={{ color: "#EFEBE2" }}
        data-hover-fill
        d="M37 108.8c16 0 29-12.7 29-28.3C66 65 53 52.3 37 52.3S8 64.9 8 80.5s13 28.3 29 28.3z"
        mask="url(#b)"
      />
      <path fill="#8E90AA" style={{ color: "#E0583B" }} data-hover-fill d="M0 77h92v10H0z" />
      <path fill="#222658" d="M0 87h92v5H0z" />
      <ellipse cx="15.4" cy="38.6" fill="#F2F3F5" rx="1.9" ry="1.9" />
      <ellipse cx="11.4" cy="62.5" fill="#F2F3F5" rx="1" ry="1" />
      <ellipse cx="51.6" cy="43.9" fill="#F2F3F5" rx="1" ry="1" />
      <ellipse cx="57.7" cy="52.6" fill="#F2F3F5" rx="1" ry="1" />
      <ellipse cx="76.9" cy="38.3" fill="#F2F3F5" rx="1.5" ry="1.6" />
      <ellipse cx="33.7" cy="35.8" fill="#F2F3F5" rx="1" ry="1" />
      <ellipse cx="82.1" cy="49.8" fill="#F2F3F5" rx="1" ry="1" />
    </g>
  </svg>
);

export default Spacejunk;
