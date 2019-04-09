export * from './baseRemoteAccessApi';
import { BaseRemoteAccessApi } from './baseRemoteAccessApi';
export * from './blueOceanApi';
import { BlueOceanApi } from './blueOceanApi';
export * from './remoteAccessApi';
import { RemoteAccessApi } from './remoteAccessApi';
export const APIS = [BaseRemoteAccessApi, BlueOceanApi, RemoteAccessApi];
