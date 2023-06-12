"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.useUserListQuery = void 0;
var client_1 = require("@apollo/client");
var UserlistQuery_graphql_1 = require("./graphql/UserlistQuery.graphql");
function useUserListQuery() {
    var _a = (0, client_1.useQuery)(UserlistQuery_graphql_1.default), data = _a.data, error = _a.error, loading = _a.loading;
    return {
        data: data,
        error: error,
        loading: loading,
    };
}
exports.useUserListQuery = useUserListQuery;
