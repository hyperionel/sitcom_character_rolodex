import React from 'react';
import './card.css'

export const Card = props => (
  <div className='card-container'>
    <img alt='character' src={`http://localhost:3001/character_images/${props.character.id}`}></img>
    <h2 key={props.character.id}> {props.character.name} </h2>
    <p> {props.character.email} </p>
  </div>
)