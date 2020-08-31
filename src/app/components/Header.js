import React from "react";

export class Header extends React.Component {
  render() {
    return (
      <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
        <div class="container">
           <ul class="navbar-nav">
             <li class="nav-item active"><a class="nav-link" href="#">Home</a></li>
             <li class="nav-item"><a class="nav-link" href="#">About</a></li>
           </ul>
        </div>
      </nav>
    );
  }
}
