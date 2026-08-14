import { Body, Controller, DefaultValuePipe, Get, Param, ParseIntPipe, ParseFloatPipe, Query, Req } from '@nestjs/common';
import { Observable } from 'rxjs';
import { Cookies, Headers } from '../decorators';
import { BaseApi } from '../api';
import { DefaultCrumbIssuer,  } from '../models';

@Controller()
export class BaseApiController {
  constructor(private readonly baseApi: BaseApi) {}

  @Get('/crumbIssuer/api/json')
  getCrumb(@Req() request: Request): DefaultCrumbIssuer | Promise<DefaultCrumbIssuer> | Observable<DefaultCrumbIssuer> {
    return this.baseApi.getCrumb(request);
  }

} 