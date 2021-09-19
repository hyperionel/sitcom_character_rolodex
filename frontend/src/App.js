import React, { Component } from 'react';
import './App.css';
import { CardList } from './components/card-list/card_list_component'
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
        <CardList characters={this.state.characters}  />
      </div>
    );
  }
}

export default App;
