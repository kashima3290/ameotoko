import React from "react";
import {
  BrowserRouter,
  Switch,
  Route,
  Link
} from "react-router-dom";
import Login from "./views/pages/Login";

export default function App() {
  return (
    <BrowserRouter>
        <Switch>
          <Route path="/Login">
            <Login />
          </Route>
          <Route path="/about">
            <About />
          </Route>
          <Route path="/users">
            <Users />
          </Route>
          <Route path="/">
            <Home />
          </Route>
        </Switch>
    </BrowserRouter>
  );
}

function Home() {
  return <h2>Home</h2>;
}

function About() {
  return <h2>About</h2>;
}

function Users() {
  return <h2>Users</h2>;
}