import React, { Component } from 'react';
import './App.css';
import { CardList } from './components/card-list/card_list_component';
import { SearchBox } from './components/search-box/search_box_component';
import { render } from '@testing-library/react';

class App extends Component {

  constructor() {
    super();
    
    this.state = {
      characters: [],
      searchField: '',
    };
  }

  componentDidMount() {
    fetch('http://localhost:3001/sitcom_characters')
    .then(response => response.json())
    .then(users => this.setState({ characters: users }))
  }
  
  handleChange = (e) => {
    this.setState({ searchField: e.target.value })
  }
  
  render() {
    const { characters, searchField } = this.state;
    const filteredMonsters =  characters.filter(character => character.name.toLowerCase().includes(searchField.toLowerCase()))
    
    return (
      <div className="App">
        <h1> Character Rolodex</h1>
        <SearchBox
          placeholder='search characters'
          handleChange={ this.handleChange }
        />
        <CardList characters={filteredMonsters}  />
      </div>
    );
  }
}

export default App;
