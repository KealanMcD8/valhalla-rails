// import React from 'react';
// import { Link, useNavigate, useParams } from "react-router-dom";

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






import React from 'react';
import { useQuery, gql } from '@apollo/client';

// Define types for User and Data
interface User {
  id: string;
  name: string;
  email: string;
  age: number;
}

interface Data {
  users: User[];
}

const GET_USERS = gql`
  query GetUsers {
    users {
      id
      name
      email
      age
    }
  }
`;

function Users() {
  const { loading, error, data } = useQuery<Data>(GET_USERS);

  if (loading) {
    return <p>Loading...</p>;
  }

  if (error) {
    return <p>Error: {error.message}</p>;
  }

  return (
    <div>
      <h2>Users</h2>
      <ul>
        {data.users.map((user) => (
          <li key={user.id}>
            <strong>{user.name}</strong> - {user.email} (Age: {user.age})
          </li>
        ))}
      </ul>
    </div>
  );
}

export default Users;





