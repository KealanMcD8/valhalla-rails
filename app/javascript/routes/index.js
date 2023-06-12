"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var react_1 = require("react");
var react_router_dom_1 = require("react-router-dom");
var Home_1 = require("../components/Home");
var Users_1 = require("../components/Users");
exports.default = (react_1.default.createElement(react_router_dom_1.BrowserRouter, null,
    react_1.default.createElement(react_router_dom_1.Routes, null,
        react_1.default.createElement(react_router_dom_1.Route, { path: "/", element: react_1.default.createElement(Home_1.default, null) }),
        react_1.default.createElement(react_router_dom_1.Route, { path: "/users", element: react_1.default.createElement(Users_1.default, null) }))));
