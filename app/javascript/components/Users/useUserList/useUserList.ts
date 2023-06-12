import {useQuery, userQuery} from '@apollo/client';

import UserListQuery from './graphql/UserlistQuery.graphql';

export function useUserListQuery() {
    const { data, error, loading} = useQuery(UserListQuery);

    return {
        data,
        error,
        loading,
    }
}
