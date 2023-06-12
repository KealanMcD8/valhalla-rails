"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.application = void 0;
var stimulus_1 = require("@hotwired/stimulus");
var application = stimulus_1.Application.start();
exports.application = application;
// Configure Stimulus development experience
application.debug = false;
window.Stimulus = application;
