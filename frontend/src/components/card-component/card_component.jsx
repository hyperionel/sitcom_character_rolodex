import React from 'react';
import './card.css'

export const Card = props => (
  <div className='card-container'>
    <h1 key={props.character.id}> {props.character.name} </h1>
  </div>
)