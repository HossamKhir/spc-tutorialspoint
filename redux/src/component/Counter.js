import React from 'react';

const Counter = (props) => {
  const {
    counter, increment, decrement, reset,
  } = props;

  return (
    <div className='App'>
      <div>{counter}</div>
      <div>
        <button type='button' onClick={increment}>+</button>
      </div>
      <div>
        <button type='button' onClick={decrement}>-</button>
      </div>
      <div>
        <button type='button' onClick={reset}>reset</button>
      </div>
    </div>
  );
};

export default Counter;
