"use strict";
// import React from 'react';
// import { Link, useNavigate, useParams } from "react-router-dom";
var __makeTemplateObject = (this && this.__makeTemplateObject) || function (cooked, raw) {
    if (Object.defineProperty) { Object.defineProperty(cooked, "raw", { value: raw }); } else { cooked.raw = raw; }
    return cooked;
};
Object.defineProperty(exports, "__esModule", { value: true });
// interface User {
//   id: number;
//   name: string;
//   created_at: Date;
// }
// interface UsersProps {
//   users: User[];
// }
// const Users: React.FC<UsersProps> = () => {
//   const [users, setUsers] = React.useState([]);
//   React.useEffect(() => {
//     // Fetch the list of users from the server
//     fetch('/users')
//       .then(response => response.json())
//       .then(data => setUsers(data));
//   }, []);
//   console.log(users);
//   return (
//     <div>
//       <h1>Users Index</h1>
//       <ul>
//         {users.map(user => (
//           <li key={user.id}>{user.name}</li>
//         ))}
//       </ul>
//     </div>
//   );
//   // return (
//   //   <>
//   //   <p>TESTING</p>
//   //     {users.map((user) => (
//   //       <div key={user.id}>
//   //         <h2>Profile</h2>
//   //         <label>Name</label>
//   //         <Link to={`/users/${user.id}`}>{user.name}</Link><br />
//   //         <Link to={`/users/${user.id}`}>View profile</Link><br />
//   //         <Link to={`/users/${user.id}/edit`}>Edit profile</Link><br />
//   //         <button
//   //           onClick={() => {
//   //             if (window.confirm('Are you sure you want to delete the user account and all associated progress?')) {
//   //               // Delete user logic
//   //             }
//   //           }}
//   //         >
//   //           Delete user
//   //         </button><br />
//   //         Joined {user.created_at} ago<br />
//   //       </div>
//   //     ))}
//   //   </>
//   // );
// }
// export default Users;
var react_1 = require("react");
var client_1 = require("@apollo/client");
var GET_USERS = (0, client_1.gql)(templateObject_1 || (templateObject_1 = __makeTemplateObject(["\n  query GetUsers {\n    users {\n      id\n      name\n      email\n      age\n    }\n  }\n"], ["\n  query GetUsers {\n    users {\n      id\n      name\n      email\n      age\n    }\n  }\n"])));
function Users() {
    var _a = (0, client_1.useQuery)(GET_USERS), loading = _a.loading, error = _a.error, data = _a.data;
    if (loading) {
        return react_1.default.createElement("p", null, "Loading...");
    }
    if (error) {
        return react_1.default.createElement("p", null,
            "Error: ",
            error.message);
    }
    return (react_1.default.createElement("div", null,
        react_1.default.createElement("h2", null, "Users"),
        react_1.default.createElement("ul", null, data.users.map(function (user) { return (react_1.default.createElement("li", { key: user.id },
            react_1.default.createElement("strong", null, user.name),
            " - ",
            user.email,
            " (Age: ",
            user.age,
            ")")); }))));
}
exports.default = Users;
var templateObject_1;
