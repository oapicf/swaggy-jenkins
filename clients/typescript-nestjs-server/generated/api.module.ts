import { DynamicModule, Module, Provider } from '@nestjs/common';
import { ApiImplementations } from './api-implementations'
import { BaseApi } from './api';
import { BaseApiController } from './controllers';
import { BlueOceanApi } from './api';
import { BlueOceanApiController } from './controllers';
import { RemoteAccessApi } from './api';
import { RemoteAccessApiController } from './controllers';

export type ApiModuleConfiguration = {
  /**
  * your Api implementations
  */
  apiImplementations: ApiImplementations,
  /**
  * additional Providers that may be used by your implementations
  */
  providers?: Provider[],
}

@Module({})
export class ApiModule {
  static forRoot(configuration: ApiModuleConfiguration): DynamicModule {
      const providers: Provider[] = [
        {
          provide: BaseApi,
          useClass: configuration.apiImplementations.baseApi
        },
        {
          provide: BlueOceanApi,
          useClass: configuration.apiImplementations.blueOceanApi
        },
        {
          provide: RemoteAccessApi,
          useClass: configuration.apiImplementations.remoteAccessApi
        },
        ...(configuration.providers || []),
      ];

      return {
        module: ApiModule,
        controllers: [
          BaseApiController,
          BlueOceanApiController,
          RemoteAccessApiController,
        ],
        providers: [...providers],
        exports: [...providers]
      }
    }
}