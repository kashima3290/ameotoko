import React from "react";
import { BrowserRouter } from "react-router-dom";
import AppLayout from "./components/templates/AppLayout";

export default function App() {
  return (
    <BrowserRouter>
      <AppLayout />
    </BrowserRouter>
  );
}