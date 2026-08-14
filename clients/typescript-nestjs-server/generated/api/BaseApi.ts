import { Injectable } from '@nestjs/common';
import { Observable } from 'rxjs';
import { DefaultCrumbIssuer,  } from '../models';


@Injectable()
export abstract class BaseApi {

  abstract getCrumb( request: Request): DefaultCrumbIssuer | Promise<DefaultCrumbIssuer> | Observable<DefaultCrumbIssuer>;

} 