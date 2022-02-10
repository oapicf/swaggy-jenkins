export * from './BaseApi';
import { BaseApi } from './BaseApi';
export * from './BlueOceanApi';
import { BlueOceanApi } from './BlueOceanApi';
export * from './RemoteAccessApi';
import { RemoteAccessApi } from './RemoteAccessApi';
export const APIS = [BaseApi, BlueOceanApi, RemoteAccessApi];
