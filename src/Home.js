import React, { Fragment } from "react";

import Nav from "./Nav";
import Header from "./Header";
import Projects from "./Projects";

export default ({ nav, title, description, projects }) => (
  <Fragment>
    <Nav items={nav} />
    <Header title={title} description={description} />
    <Projects items={projects} />
  </Fragment>
);
