import React from "react";
import {
  BrowserRouter,
  Switch,
  Route,
} from "react-router-dom";
import AppLayout from "./components/templates/AppLayout";
import SignUp from "./components/pages/SignUp";
import Login from "./components/pages/Login";

export default function App() {
  return (
    <BrowserRouter>
      <Switch>
        <Route path="/SignUp">
          <SignUp />
        </Route>
        <Route path="/Login">
          <Login />
        </Route>
        {/* 以下のルートに入る前は必ずログイン認証 */}
        <Route path="/Weather">
          <AppLayout />
        </Route>
        <Route path="/LineConfig">
          <AppLayout />
        </Route>
      </Switch>
    </BrowserRouter>
  );
}