"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var react_1 = require("react");
var react_router_dom_1 = require("react-router-dom");
// Import your components for each route
var Home_1 = require("./components/Home");
var ExerciseList_1 = require("./components/ExerciseList");
var ExerciseDetail_1 = require("./components/ExerciseDetail");
var CreateExercise_1 = require("./components/CreateExercise");
var EditExercise_1 = require("./components/EditExercise");
var Statistics_1 = require("./components/Statistics");
var UserProfile_1 = require("./components/UserProfile");
var Login_1 = require("./components/Login");
var Register_1 = require("./components/Register");
var PasswordReset_1 = require("./components/PasswordReset");
function App() {
    return (react_1.default.createElement(react_router_dom_1.BrowserRouter, null,
        react_1.default.createElement(react_router_dom_1.Switch, null,
            react_1.default.createElement(react_router_dom_1.Route, { exact: true, path: "/", component: Home_1.default }),
            react_1.default.createElement(react_router_dom_1.Route, { exact: true, path: "/exercises", component: ExerciseList_1.default }),
            react_1.default.createElement(react_router_dom_1.Route, { exact: true, path: "/exercises/:id", component: ExerciseDetail_1.default }),
            react_1.default.createElement(react_router_dom_1.Route, { exact: true, path: "/exercises/create", component: CreateExercise_1.default }),
            react_1.default.createElement(react_router_dom_1.Route, { exact: true, path: "/exercises/:id/edit", component: EditExercise_1.default }),
            react_1.default.createElement(react_router_dom_1.Route, { exact: true, path: "/statistics", component: Statistics_1.default }),
            react_1.default.createElement(react_router_dom_1.Route, { exact: true, path: "/profile", component: UserProfile_1.default }),
            react_1.default.createElement(react_router_dom_1.Route, { exact: true, path: "/login", component: Login_1.default }),
            react_1.default.createElement(react_router_dom_1.Route, { exact: true, path: "/register", component: Register_1.default }),
            react_1.default.createElement(react_router_dom_1.Route, { exact: true, path: "/reset-password", component: PasswordReset_1.default }))));
}
exports.default = App;
