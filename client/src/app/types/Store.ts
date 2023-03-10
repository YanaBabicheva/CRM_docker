import {AppDispatch, RootState} from '../store/store';

export type DispatchType = AppDispatch;
export type StateType = RootState;
export interface InitStateToken {
    tokenValue: null | string,
    userId: null | string,
}