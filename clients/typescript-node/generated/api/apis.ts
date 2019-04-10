export * from './baseApi';
import { BaseApi } from './baseApi';
export * from './blueOceanApi';
import { BlueOceanApi } from './blueOceanApi';
export * from './remoteAccessApi';
import { RemoteAccessApi } from './remoteAccessApi';
export const APIS = [BaseApi, BlueOceanApi, RemoteAccessApi];
