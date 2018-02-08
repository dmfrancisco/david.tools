import React, { Fragment } from "react";

import AppHelmet from "./AppHelmet";
import Nav from "./Nav";
import Header from "./Header";
import Projects from "./Projects";
import data from "./data";

export default () => (
  <Fragment>
    <AppHelmet {...data.helmet} />

    <Nav items={data.nav} />
    <Header title={data.title} description={data.description} />
    <Projects items={data.projects} />
  </Fragment>
);
