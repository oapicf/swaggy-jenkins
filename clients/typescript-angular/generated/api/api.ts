export * from './baseRemoteAccess.service';
import { BaseRemoteAccessService } from './baseRemoteAccess.service';
export * from './blueOcean.service';
import { BlueOceanService } from './blueOcean.service';
export * from './remoteAccess.service';
import { RemoteAccessService } from './remoteAccess.service';
export const APIS = [BaseRemoteAccessService, BlueOceanService, RemoteAccessService];
