import React, { Component } from 'react';
import './App.css';
import { render } from '@testing-library/react';

class App extends Component {

  constructor() {
    super();
    
    this.state = {
      characters: []
    };
  }

  componentDidMount() {
    fetch('http://localhost:3001/sitcom_characters')
    .then(response => response.json())
    .then(users => this.setState({ characters: users }))
  }
  
  render() {
    return (
      <div className="App">
        {
          this.state.characters.map(monster => <h1 key={monster.id}> {monster.name} </h1>)
        }
      </div>
    );
  }
}

export default App;
