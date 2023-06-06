// import React from "react";
// import { createRoot } from "react-dom/client";
// import App from "./App";

// document.addEventListener("turbo:load", () => {
//   const root = createRoot(
//     // document.body.appendChild(document.createElement("div"))
//   );
//   root.render(<App />);
// });
import React from 'react'
import ReactDOM from 'react-dom'
import App from './App'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <App />,
    document.body.appendChild(document.createElement('div')),
  )
})
