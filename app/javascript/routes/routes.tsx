import React from 'react';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';

// Import your components for each route
import Home from './components/Home';
import ExerciseList from './components/ExerciseList';
import ExerciseDetail from './components/ExerciseDetail';
import CreateExercise from './components/CreateExercise';
import EditExercise from './components/EditExercise';
import Statistics from './components/Statistics';
import UserProfile from './components/UserProfile';
import Login from './components/Login';
import Register from './components/Register';
import PasswordReset from './components/PasswordReset';

function App() {
  return (
    <Router>
      <Switch>
        <Route exact path="/" component={Home} />
        <Route exact path="/exercises" component={ExerciseList} />
        <Route exact path="/exercises/:id" component={ExerciseDetail} />
        <Route exact path="/exercises/create" component={CreateExercise} />
        <Route exact path="/exercises/:id/edit" component={EditExercise} />
        <Route exact path="/statistics" component={Statistics} />
        <Route exact path="/profile" component={UserProfile} />
        <Route exact path="/login" component={Login} />
        <Route exact path="/register" component={Register} />
        <Route exact path="/reset-password" component={PasswordReset} />
      </Switch>
    </Router>
  );
}

export default App;
