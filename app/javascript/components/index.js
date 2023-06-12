"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var react_1 = require("react");
var client_1 = require("react-dom/client");
var App_1 = require("./App");
document.addEventListener("turbo:load", function () {
    var root = (0, client_1.createRoot)(document.body.appendChild(document.createElement("div")));
    root.render(react_1.default.createElement(App_1.default, null));
});
