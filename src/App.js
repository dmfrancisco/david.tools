import React, { Fragment } from "react";

import Nav from "./Nav";
import Header from "./Header";
import Projects from "./Projects";
import { title, description, nav, projects } from "./data";

export default () => (
  <Fragment>
    <Nav items={nav} />
    <Header title={title} description={description} />
    <Projects items={projects} />
  </Fragment>
);
