import React from "react";
import { render } from "react-dom";

import { Header } from "./components/Header";
import { Home } from "./components/Home";

class App extends React.Component {
  render() {
    return (
      <div class="container">
        <div class="row">
          <div class="col-xs-10 col-xs-offset-1">
            <Header/>
          </div>
        </div>
        <div class="row">
          <div class="col-xs-10 col-xs-offset-1">
            <Home/>
          </div>
        </div>
      </div>
    );
  }
}

render(<App />, window.document.getElementById('app'));
