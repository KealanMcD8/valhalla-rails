"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        if (typeof b !== "function" && b !== null)
            throw new TypeError("Class extends value " + String(b) + " is not a constructor or null");
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
var stimulus_1 = require("@hotwired/stimulus");
var react_1 = require("react");
var client_1 = require("react-dom/client");
var App_1 = require("../components/App");
// Connects to data-controller="react"
var default_1 = /** @class */ (function (_super) {
    __extends(default_1, _super);
    function default_1() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    default_1.prototype.connect = function () {
        // console.log("React controller connected");
        var app = document.getElementById("app");
        (0, client_1.createRoot)(app).render(react_1.default.createElement(App_1.default, null));
    };
    return default_1;
}(stimulus_1.Controller));
exports.default = default_1;
