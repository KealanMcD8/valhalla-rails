import React from 'react';
import { useQuery, gql } from '@apollo/client';
import { useUserListQuery } from './useUserList/useUserList';

interface User {
  id: number;
  age: number;
  email: string;
  fitnessLevel: string;
  gender: string;
  height: number;
  name: string;
  profilePicture: string;
  weight: number;
}

interface UserListQueryData {
  userList: {
    edges: {
      node: User;
    }[];
  };
}

function UsersPage() {
  const { loading, error, data } = useUserListQuery();

  if (loading) {
    return <div>Loading...</div>;
  }

  if (error) {
    return <div>Error: {error.message}</div>;
  }

  const userList = data?.userList.edges;

  return (
    <div>
      {userList?.map(({ node }) => (
        <div key={node.id}>
          <h2>Profile</h2>
          <label>Name</label>
          <a href={`/users/${node.id}`}>{node.name}</a>
          <br />
          <a href={`/users/${node.id}`}>View profile</a>
          <br />
          <a href={`/users/${node.id}/edit`}>Edit profile</a>
          <br />
          <button
            onClick={() => {
              if (window.confirm('Are you sure you want to delete the user account and all associated progress?')) {
                // Call delete user API or perform delete operation
              }
            }}
          >
            Delete user
          </button>
          <br />
          Joined {timeAgo(node.created_at)} ago<br />
        </div>
      ))}
    </div>
  );
}

function timeAgo(created_at: Date) {
  // Implement your logic to calculate time ago from created_at date
  // You can use libraries like `date-fns` for this purpose
  return '';
}

export default UsersPage;
