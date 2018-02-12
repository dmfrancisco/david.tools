import React from "react";
import { Helmet } from "react-helmet";
import { NavLink } from "react-router-dom";

import Illustration from "./img/NotFound";
import "./NotFound.css";

export default ({ nav }) => (
  <section className="NotFound">
    <Helmet>
      <title>404</title>
    </Helmet>

    <div className="NotFound-content">
      <Illustration className="NotFound-img" />

      <p className="NotFound-text">
        The page you are looking for was moved, removed, renamed or might never existed. I am sorry
        for the inconvenience. <br />
        <NavLink to="/" className="NotFound-link">
          Back to homepage
        </NavLink>
      </p>
    </div>
  </section>
);
