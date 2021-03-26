import React from "react";
import {
  BrowserRouter,
  Switch,
  Route,
  Link
} from "react-router-dom";
import Login from "./components/pages/Login";
import Header from "./components/organisms/Header";
import AppLayout from "./components/templates/AppLayout";

export default function App() {
  return (
    <BrowserRouter>
      {/* <Header /> */}
      <AppLayout />
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
      <Link to="/">Back To Home</Link>
      <br/>
      <Link to="/Login">login</Link>
      <br/>
      <Link to="/about">about</Link>
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