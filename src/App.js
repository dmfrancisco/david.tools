import React, { Fragment } from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";

import AppHelmet from "./AppHelmet";
import Home from "./Home";
import NotFound from "./NotFound";
import data from "./data";

export default () => (
  <Fragment>
    <AppHelmet {...data.helmet} />

    <Router>
      <Switch>
        <Route exact path="/" render={routeProps => <Home {...data} />} />
        <Route render={routeProps => <NotFound {...data} />} />
      </Switch>
    </Router>
  </Fragment>
);
