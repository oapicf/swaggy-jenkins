import { DynamicModule, HttpService, HttpModule, Module, Global } from '@nestjs/common';
import { Configuration } from './configuration';

import { BaseService } from './api/base.service';
import { BlueOceanService } from './api/blueOcean.service';
import { RemoteAccessService } from './api/remoteAccess.service';

@Global()
@Module({
  imports:      [ HttpModule ],
  exports:      [
    BaseService,
    BlueOceanService,
    RemoteAccessService
  ],
  providers: [
    BaseService,
    BlueOceanService,
    RemoteAccessService
  ]
})
export class ApiModule {
    public static forRoot(configurationFactory: () => Configuration): DynamicModule {
        return {
            module: ApiModule,
            providers: [ { provide: Configuration, useFactory: configurationFactory } ]
        };
    }

    constructor( httpService: HttpService) { }
}
