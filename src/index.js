import React from "react";
import { hydrate, render } from "react-dom";
import "normalize.css";
import "typeface-karla";

import App from "./App";
import "./index.css";

const rootElement = document.getElementById("root");

if (rootElement.hasChildNodes()) {
  hydrate(<App />, rootElement);
} else {
  render(<App />, rootElement);
}
