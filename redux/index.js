import { applyMiddleware, createStore } from 'redux';
import thunk from 'redux-thunk';
import isPromise from 'is-promise';
import rootReducer from './reducers';

const logger = ({ getState }) => (next) => (action) => {
  console.log(`action:\t${action}`);
  const returnVal = next(action);
  console.log(`state:\t${getState()}`);
  return returnVal;
};

const loaderHandler = ({ dispatch }) => (next) => (action) => {
  if (isPromise(action)) {
    dispatch({ type: 'SHOW_LOADER' });
    action
      .then(() => dispatch({ type: 'HIDE_LOADER' }))
      .catch(() => dispatch({ type: 'HIDE_LOADER' }));
  }
  return next(action);
};

const store = createStore(rootReducer, applyMiddleware(thunk));
store.dispatch({ type: 'ITEMS_REQUEST', isLoading: true });
