import React from 'react';
import { BrowserRouter } from 'react-router-dom';

import { ApolloClient, InMemoryCache, ApolloProvider } from '@apollo/client';
import Routes from "../routes";

const client = new ApolloClient({
  uri: '/graphql', // Replace with your GraphQL API endpoint
  cache: new InMemoryCache(),
});
console.log('test');
function App() {
    return (
        <BrowserRouter >
            <ApolloProvider client={client}>
                <Routes />
            </ApolloProvider>
        </BrowserRouter>
    );
};

export default App;
