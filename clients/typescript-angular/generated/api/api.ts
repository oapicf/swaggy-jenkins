export * from './baseAccess.service';
import { BaseAccessService } from './baseAccess.service';
export * from './blueOcean.service';
import { BlueOceanService } from './blueOcean.service';
export * from './remoteAccess.service';
import { RemoteAccessService } from './remoteAccess.service';
export const APIS = [BaseAccessService, BlueOceanService, RemoteAccessService];
