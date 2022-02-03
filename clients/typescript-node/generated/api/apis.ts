export * from './baseApi';
import { BaseApi } from './baseApi';
export * from './blueOceanApi';
import { BlueOceanApi } from './blueOceanApi';
export * from './remoteAccessApi';
import { RemoteAccessApi } from './remoteAccessApi';
import * as http from 'http';

export class HttpError extends Error {
    constructor (public response: http.IncomingMessage, public body: any, public statusCode?: number) {
        super('HTTP request failed');
        this.name = 'HttpError';
    }
}

export { RequestFile } from '../model/models';

export const APIS = [BaseApi, BlueOceanApi, RemoteAccessApi];
