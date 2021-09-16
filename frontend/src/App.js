import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import { render } from '@testing-library/react';

class App extends Component {

  constructor() {
    super();
    
    this.state = {
      characters: [
        {
          name: 'Sheldon Cooper',
          id: 'a1'
        },
        {
          name: 'John Dorian',
          id: 'a2'
        },
        {
          name: 'Pam Beesley',
          id: 'a3'
        }
      ]
    }
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
