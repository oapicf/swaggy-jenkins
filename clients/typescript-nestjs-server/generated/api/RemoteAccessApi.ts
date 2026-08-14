import { Injectable } from '@nestjs/common';
import { Observable } from 'rxjs';
import { ComputerSet, FreeStyleBuild, FreeStyleProject, Hudson, ListView, Queue,  } from '../models';


@Injectable()
export abstract class RemoteAccessApi {

  abstract getComputer(depth: number,  request: Request): ComputerSet | Promise<ComputerSet> | Observable<ComputerSet>;


  abstract getJenkins( request: Request): Hudson | Promise<Hudson> | Observable<Hudson>;


  abstract getJob(name: string,  request: Request): FreeStyleProject | Promise<FreeStyleProject> | Observable<FreeStyleProject>;


  abstract getJobConfig(name: string,  request: Request): string | Promise<string> | Observable<string>;


  abstract getJobLastBuild(name: string,  request: Request): FreeStyleBuild | Promise<FreeStyleBuild> | Observable<FreeStyleBuild>;


  abstract getJobProgressiveText(name: string, number: string, start: string,  request: Request): void | Promise<void> | Observable<void>;


  abstract getQueue( request: Request): Queue | Promise<Queue> | Observable<Queue>;


  abstract getQueueItem(number: string,  request: Request): Queue | Promise<Queue> | Observable<Queue>;


  abstract getView(name: string,  request: Request): ListView | Promise<ListView> | Observable<ListView>;


  abstract getViewConfig(name: string,  request: Request): string | Promise<string> | Observable<string>;


  abstract headJenkins( request: Request): void | Promise<void> | Observable<void>;


  abstract postCreateItem(name: string, _from: string | undefined, mode: string | undefined, jenkinsCrumb: string | undefined, contentType: string | undefined, body: string | undefined,  request: Request): void | Promise<void> | Observable<void>;


  abstract postCreateView(name: string, jenkinsCrumb: string | undefined, contentType: string | undefined, body: string | undefined,  request: Request): void | Promise<void> | Observable<void>;


  abstract postJobBuild(name: string, json: string, token: string | undefined, jenkinsCrumb: string | undefined,  request: Request): void | Promise<void> | Observable<void>;


  abstract postJobConfig(name: string, body: string, jenkinsCrumb: string | undefined,  request: Request): void | Promise<void> | Observable<void>;


  abstract postJobDelete(name: string, jenkinsCrumb: string | undefined,  request: Request): void | Promise<void> | Observable<void>;


  abstract postJobDisable(name: string, jenkinsCrumb: string | undefined,  request: Request): void | Promise<void> | Observable<void>;


  abstract postJobEnable(name: string, jenkinsCrumb: string | undefined,  request: Request): void | Promise<void> | Observable<void>;


  abstract postJobLastBuildStop(name: string, jenkinsCrumb: string | undefined,  request: Request): void | Promise<void> | Observable<void>;


  abstract postViewConfig(name: string, body: string, jenkinsCrumb: string | undefined,  request: Request): void | Promise<void> | Observable<void>;

} 