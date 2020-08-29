import React from "react";

export class Header extends React.Component {
  render() {
    return (
      <nav class="navbar navbar-default">
        <div class="container">
          <div class="navbar-header">
            <ul class="nav navbar-nav">
              <li><a href="#">Home</a></li>
            </ul>
          </div>
        </div>
      </nav>
    );
  }
}
