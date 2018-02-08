import React, { Fragment } from "react";

import Nav from "./Nav";
import Header from "./Header";
import Projects from "./Projects";
import data from "./data";

export default () => (
  <Fragment>
    <Nav items={data.nav} />
    <Header title={data.title} description={data.description} />
    <Projects items={data.projects} />
  </Fragment>
);
