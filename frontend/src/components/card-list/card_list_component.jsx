import React from 'react';

import { Card } from '../card-component/card_component';

import './card_list.css';

export const CardList = (props) => ( 
  <div className='card-list'>
    {
      props.characters.map(char => (
        <Card key={char.id} character={char} />
      ))
    }
  </div>
); 