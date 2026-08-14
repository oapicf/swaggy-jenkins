import { Type } from '@nestjs/common';
import { BaseApi } from './api';
import { BlueOceanApi } from './api';
import { RemoteAccessApi } from './api';

/**
 * Provide this type to {@link ApiModule} to provide your API implementations
**/
export type ApiImplementations = {
  baseApi: Type<BaseApi>
  blueOceanApi: Type<BlueOceanApi>
  remoteAccessApi: Type<RemoteAccessApi>
};
