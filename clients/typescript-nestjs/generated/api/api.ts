export * from './base.service';
import { BaseService } from './base.service';
export * from './blueOcean.service';
import { BlueOceanService } from './blueOcean.service';
export * from './remoteAccess.service';
import { RemoteAccessService } from './remoteAccess.service';
export const APIS = [BaseService, BlueOceanService, RemoteAccessService];
