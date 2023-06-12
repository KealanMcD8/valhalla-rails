"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var react_1 = require("react");
function Home() {
    return (react_1.default.createElement("div", null,
        react_1.default.createElement("h1", null, "Welcome to Valhalla Fitness App!"),
        react_1.default.createElement("p", null, "Track your exercises, set goals, and achieve greatness."),
        react_1.default.createElement("img", { src: "/images/valhalla-logo.png", alt: "Valhalla Logo" }),
        react_1.default.createElement("button", null, "Get Started")));
}
exports.default = Home;
