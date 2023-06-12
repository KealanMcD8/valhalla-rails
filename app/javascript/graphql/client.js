"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var client_1 = require("@apollo/client");
var client = new client_1.ApolloClient({
    uri: '/graphql',
    cache: new client_1.InMemoryCache(),
});
exports.default = client;
