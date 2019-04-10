import {interfaces} from "inversify";

import { BaseAccessService } from './api/baseAccess.service';
import { BlueOceanService } from './api/blueOcean.service';
import { RemoteAccessService } from './api/remoteAccess.service';

export class ApiServiceBinder {
    public static with(container: interfaces.Container) {
        container.bind<BaseAccessService>("BaseAccessService").to(BaseAccessService).inSingletonScope();
        container.bind<BlueOceanService>("BlueOceanService").to(BlueOceanService).inSingletonScope();
        container.bind<RemoteAccessService>("RemoteAccessService").to(RemoteAccessService).inSingletonScope();
    }
}
