import {interfaces} from "inversify";

import { BaseRemoteAccessService } from './api/baseRemoteAccess.service';
import { BlueOceanService } from './api/blueOcean.service';
import { RemoteAccessService } from './api/remoteAccess.service';

export class ApiServiceBinder {
    public static with(container: interfaces.Container) {
        container.bind<BaseRemoteAccessService>("BaseRemoteAccessService").to(BaseRemoteAccessService).inSingletonScope();
        container.bind<BlueOceanService>("BlueOceanService").to(BlueOceanService).inSingletonScope();
        container.bind<RemoteAccessService>("RemoteAccessService").to(RemoteAccessService).inSingletonScope();
    }
}
