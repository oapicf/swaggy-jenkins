import { Body, Controller, DefaultValuePipe, Get, Head, Post, Param, ParseIntPipe, ParseFloatPipe, Query, Req } from '@nestjs/common';
import { Observable } from 'rxjs';
import { Cookies, Headers } from '../decorators';
import { RemoteAccessApi } from '../api';
import { ComputerSet, FreeStyleBuild, FreeStyleProject, Hudson, ListView, Queue,  } from '../models';

@Controller()
export class RemoteAccessApiController {
  constructor(private readonly remoteAccessApi: RemoteAccessApi) {}

  @Get('/computer/api/json')
  getComputer(@Query('depth') depth: number, @Req() request: Request): ComputerSet | Promise<ComputerSet> | Observable<ComputerSet> {
    return this.remoteAccessApi.getComputer(depth, request);
  }

  @Get('/api/json')
  getJenkins(@Req() request: Request): Hudson | Promise<Hudson> | Observable<Hudson> {
    return this.remoteAccessApi.getJenkins(request);
  }

  @Get('/job/:name/api/json')
  getJob(@Param('name') name: string, @Req() request: Request): FreeStyleProject | Promise<FreeStyleProject> | Observable<FreeStyleProject> {
    return this.remoteAccessApi.getJob(name, request);
  }

  @Get('/job/:name/config.xml')
  getJobConfig(@Param('name') name: string, @Req() request: Request): string | Promise<string> | Observable<string> {
    return this.remoteAccessApi.getJobConfig(name, request);
  }

  @Get('/job/:name/lastBuild/api/json')
  getJobLastBuild(@Param('name') name: string, @Req() request: Request): FreeStyleBuild | Promise<FreeStyleBuild> | Observable<FreeStyleBuild> {
    return this.remoteAccessApi.getJobLastBuild(name, request);
  }

  @Get('/job/:name/:number/logText/progressiveText')
  getJobProgressiveText(@Param('name') name: string, @Param('number') number: string, @Query('start') start: string, @Req() request: Request): void | Promise<void> | Observable<void> {
    return this.remoteAccessApi.getJobProgressiveText(name, number, start, request);
  }

  @Get('/queue/api/json')
  getQueue(@Req() request: Request): Queue | Promise<Queue> | Observable<Queue> {
    return this.remoteAccessApi.getQueue(request);
  }

  @Get('/queue/item/:number/api/json')
  getQueueItem(@Param('number') number: string, @Req() request: Request): Queue | Promise<Queue> | Observable<Queue> {
    return this.remoteAccessApi.getQueueItem(number, request);
  }

  @Get('/view/:name/api/json')
  getView(@Param('name') name: string, @Req() request: Request): ListView | Promise<ListView> | Observable<ListView> {
    return this.remoteAccessApi.getView(name, request);
  }

  @Get('/view/:name/config.xml')
  getViewConfig(@Param('name') name: string, @Req() request: Request): string | Promise<string> | Observable<string> {
    return this.remoteAccessApi.getViewConfig(name, request);
  }

  @Head('/api/json')
  headJenkins(@Req() request: Request): void | Promise<void> | Observable<void> {
    return this.remoteAccessApi.headJenkins(request);
  }

  @Post('/createItem')
  postCreateItem(@Query('name') name: string, @Query('from') _from: string | undefined, @Query('mode') mode: string | undefined, @Headers('Jenkins-Crumb') jenkinsCrumb: string | undefined, @Headers('Content-Type') contentType: string | undefined, @Body() body: string | undefined, @Req() request: Request): void | Promise<void> | Observable<void> {
    return this.remoteAccessApi.postCreateItem(name, _from, mode, jenkinsCrumb, contentType, body, request);
  }

  @Post('/createView')
  postCreateView(@Query('name') name: string, @Headers('Jenkins-Crumb') jenkinsCrumb: string | undefined, @Headers('Content-Type') contentType: string | undefined, @Body() body: string | undefined, @Req() request: Request): void | Promise<void> | Observable<void> {
    return this.remoteAccessApi.postCreateView(name, jenkinsCrumb, contentType, body, request);
  }

  @Post('/job/:name/build')
  postJobBuild(@Param('name') name: string, @Query('json') json: string, @Query('token') token: string | undefined, @Headers('Jenkins-Crumb') jenkinsCrumb: string | undefined, @Req() request: Request): void | Promise<void> | Observable<void> {
    return this.remoteAccessApi.postJobBuild(name, json, token, jenkinsCrumb, request);
  }

  @Post('/job/:name/config.xml')
  postJobConfig(@Param('name') name: string, @Body() body: string, @Headers('Jenkins-Crumb') jenkinsCrumb: string | undefined, @Req() request: Request): void | Promise<void> | Observable<void> {
    return this.remoteAccessApi.postJobConfig(name, body, jenkinsCrumb, request);
  }

  @Post('/job/:name/doDelete')
  postJobDelete(@Param('name') name: string, @Headers('Jenkins-Crumb') jenkinsCrumb: string | undefined, @Req() request: Request): void | Promise<void> | Observable<void> {
    return this.remoteAccessApi.postJobDelete(name, jenkinsCrumb, request);
  }

  @Post('/job/:name/disable')
  postJobDisable(@Param('name') name: string, @Headers('Jenkins-Crumb') jenkinsCrumb: string | undefined, @Req() request: Request): void | Promise<void> | Observable<void> {
    return this.remoteAccessApi.postJobDisable(name, jenkinsCrumb, request);
  }

  @Post('/job/:name/enable')
  postJobEnable(@Param('name') name: string, @Headers('Jenkins-Crumb') jenkinsCrumb: string | undefined, @Req() request: Request): void | Promise<void> | Observable<void> {
    return this.remoteAccessApi.postJobEnable(name, jenkinsCrumb, request);
  }

  @Post('/job/:name/lastBuild/stop')
  postJobLastBuildStop(@Param('name') name: string, @Headers('Jenkins-Crumb') jenkinsCrumb: string | undefined, @Req() request: Request): void | Promise<void> | Observable<void> {
    return this.remoteAccessApi.postJobLastBuildStop(name, jenkinsCrumb, request);
  }

  @Post('/view/:name/config.xml')
  postViewConfig(@Param('name') name: string, @Body() body: string, @Headers('Jenkins-Crumb') jenkinsCrumb: string | undefined, @Req() request: Request): void | Promise<void> | Observable<void> {
    return this.remoteAccessApi.postViewConfig(name, body, jenkinsCrumb, request);
  }

} 