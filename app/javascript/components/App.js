"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var react_1 = require("react");
var react_router_dom_1 = require("react-router-dom");
var client_1 = require("@apollo/client");
var routes_1 = require("../routes");
var graphql_1 = require("../graphql");
var Users_1 = require("./Users");
console.log('test');
function App() {
    return (react_1.default.createElement(react_router_dom_1.BrowserRouter, null,
        react_1.default.createElement(client_1.ApolloProvider, { client: graphql_1.default },
            react_1.default.createElement(routes_1.default, null,
                react_1.default.createElement(react_router_dom_1.Route, { path: "/users", Component: Users_1.default })))));
}
;
exports.default = App;
