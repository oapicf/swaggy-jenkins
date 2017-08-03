import { NgModule, ModuleWithProviders } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HttpModule } from '@angular/http';
import { Configuration } from './configuration';

import { BlueOceanService } from './api/blueOcean.service';
import { RemoteAccessService } from './api/remoteAccess.service';

@NgModule({
  imports:      [ CommonModule, HttpModule ],
  declarations: [],
  exports:      [],
  providers:    [ BlueOceanService, RemoteAccessService ]
})
export class ApiModule {
    public static forConfig(configurationFactory: () => Configuration): ModuleWithProviders {
        return {
            ngModule: ApiModule,
            providers: [ {provide: Configuration, useFactory: configurationFactory}]
        }
    }
}
