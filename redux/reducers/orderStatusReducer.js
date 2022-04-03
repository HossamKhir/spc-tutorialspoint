import { GET_ORDER_STATUS } from '../constants/appConstant';

export default (state = {}, action = {}) => {
  switch (action) {
    case GET_ORDER_STATUS:
      return { ...state, orderStatusData: action.payload.orderStatus };
    default:
      return state;
  }
};
