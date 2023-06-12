"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var react_1 = require("react");
var useUserList_1 = require("./useUserList/useUserList");
function UsersPage() {
    var _a = (0, useUserList_1.useUserListQuery)(), loading = _a.loading, error = _a.error, data = _a.data;
    if (loading) {
        return react_1.default.createElement("div", null, "Loading...");
    }
    if (error) {
        return react_1.default.createElement("div", null,
            "Error: ",
            error.message);
    }
    var userList = data === null || data === void 0 ? void 0 : data.userList.edges;
    return (react_1.default.createElement("div", null, userList === null || userList === void 0 ? void 0 : userList.map(function (_a) {
        var node = _a.node;
        return (react_1.default.createElement("div", { key: node.id },
            react_1.default.createElement("h2", null, "Profile"),
            react_1.default.createElement("label", null, "Name"),
            react_1.default.createElement("a", { href: "/users/".concat(node.id) }, node.name),
            react_1.default.createElement("br", null),
            react_1.default.createElement("a", { href: "/users/".concat(node.id) }, "View profile"),
            react_1.default.createElement("br", null),
            react_1.default.createElement("a", { href: "/users/".concat(node.id, "/edit") }, "Edit profile"),
            react_1.default.createElement("br", null),
            react_1.default.createElement("button", { onClick: function () {
                    if (window.confirm('Are you sure you want to delete the user account and all associated progress?')) {
                        // Call delete user API or perform delete operation
                    }
                } }, "Delete user"),
            react_1.default.createElement("br", null),
            "Joined ",
            timeAgo(node.created_at),
            " ago",
            react_1.default.createElement("br", null)));
    })));
}
function timeAgo(created_at) {
    // Implement your logic to calculate time ago from created_at date
    // You can use libraries like `date-fns` for this purpose
    return '';
}
exports.default = UsersPage;
