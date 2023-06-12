import React from 'react';
import { BrowserRouter, Route } from 'react-router-dom';

import { ApolloClient, InMemoryCache, ApolloProvider, App } from '@apollo/client';
import Routes from "../routes";

import client from '../graphql';
import Home from './Home';
import Users from './Users';

console.log('test');

function App() {
    return (
        <BrowserRouter >
            <ApolloProvider client={client}>
              <Routes >
                <Route path="/users" Component={Users} />
              </Routes>
            </ApolloProvider>
        </BrowserRouter>
    );
};

export default App;
