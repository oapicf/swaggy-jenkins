export * from './baseAccessApi';
import { BaseAccessApi } from './baseAccessApi';
export * from './blueOceanApi';
import { BlueOceanApi } from './blueOceanApi';
export * from './remoteAccessApi';
import { RemoteAccessApi } from './remoteAccessApi';
export const APIS = [BaseAccessApi, BlueOceanApi, RemoteAccessApi];
