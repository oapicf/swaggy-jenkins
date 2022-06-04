/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
/* tslint:disable:no-unused-variable member-ordering */

import { Observable } from 'rxjs/Observable';

import { map } from 'rxjs/operators';
import IHttpClient from '../IHttpClient';
import { inject, injectable } from 'inversify';
import { IAPIConfiguration } from '../IAPIConfiguration';
import { Headers } from '../Headers';
import HttpResponse from '../HttpResponse';

import { ComputerSet } from '../model/computerSet';
import { FreeStyleBuild } from '../model/freeStyleBuild';
import { FreeStyleProject } from '../model/freeStyleProject';
import { Hudson } from '../model/hudson';
import { ListView } from '../model/listView';
import { Queue } from '../model/queue';

import { COLLECTION_FORMATS }  from '../variables';



@injectable()
export class RemoteAccessService {
    private basePath: string = 'http://localhost';

    constructor(@inject('IApiHttpClient') private httpClient: IHttpClient,
        @inject('IAPIConfiguration') private APIConfiguration: IAPIConfiguration ) {
        if(this.APIConfiguration.basePath)
            this.basePath = this.APIConfiguration.basePath;
    }

    /**
     * 
     * Retrieve computer details
     * @param depth Recursion depth in response model
     
     */
    public getComputer(depth: number, observe?: 'body', headers?: Headers): Observable<ComputerSet>;
    public getComputer(depth: number, observe?: 'response', headers?: Headers): Observable<HttpResponse<ComputerSet>>;
    public getComputer(depth: number, observe: any = 'body', headers: Headers = {}): Observable<any> {
        if (depth === null || depth === undefined){
            throw new Error('Required parameter depth was null or undefined when calling getComputer.');
        }

        let queryParameters: string[] = [];
        if (depth !== undefined) {
            queryParameters.push('depth='+encodeURIComponent(String(depth)));
        }

        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<ComputerSet>> = this.httpClient.get(`${this.basePath}/computer/api/json?${queryParameters.join('&')}`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <ComputerSet>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * Retrieve Jenkins details
     
     */
    public getJenkins(observe?: 'body', headers?: Headers): Observable<Hudson>;
    public getJenkins(observe?: 'response', headers?: Headers): Observable<HttpResponse<Hudson>>;
    public getJenkins(observe: any = 'body', headers: Headers = {}): Observable<any> {
        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<Hudson>> = this.httpClient.get(`${this.basePath}/api/json`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <Hudson>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * Retrieve job details
     * @param name Name of the job
     
     */
    public getJob(name: string, observe?: 'body', headers?: Headers): Observable<FreeStyleProject>;
    public getJob(name: string, observe?: 'response', headers?: Headers): Observable<HttpResponse<FreeStyleProject>>;
    public getJob(name: string, observe: any = 'body', headers: Headers = {}): Observable<any> {
        if (name === null || name === undefined){
            throw new Error('Required parameter name was null or undefined when calling getJob.');
        }

        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<FreeStyleProject>> = this.httpClient.get(`${this.basePath}/job/${encodeURIComponent(String(name))}/api/json`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <FreeStyleProject>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * Retrieve job configuration
     * @param name Name of the job
     
     */
    public getJobConfig(name: string, observe?: 'body', headers?: Headers): Observable<string>;
    public getJobConfig(name: string, observe?: 'response', headers?: Headers): Observable<HttpResponse<string>>;
    public getJobConfig(name: string, observe: any = 'body', headers: Headers = {}): Observable<any> {
        if (name === null || name === undefined){
            throw new Error('Required parameter name was null or undefined when calling getJobConfig.');
        }

        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = 'text/xml';

        const response: Observable<HttpResponse<string>> = this.httpClient.get(`${this.basePath}/job/${encodeURIComponent(String(name))}/config.xml`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <string>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * Retrieve job\&#39;s last build details
     * @param name Name of the job
     
     */
    public getJobLastBuild(name: string, observe?: 'body', headers?: Headers): Observable<FreeStyleBuild>;
    public getJobLastBuild(name: string, observe?: 'response', headers?: Headers): Observable<HttpResponse<FreeStyleBuild>>;
    public getJobLastBuild(name: string, observe: any = 'body', headers: Headers = {}): Observable<any> {
        if (name === null || name === undefined){
            throw new Error('Required parameter name was null or undefined when calling getJobLastBuild.');
        }

        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<FreeStyleBuild>> = this.httpClient.get(`${this.basePath}/job/${encodeURIComponent(String(name))}/lastBuild/api/json`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <FreeStyleBuild>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * Retrieve job\&#39;s build progressive text output
     * @param name Name of the job
     * @param number Build number
     * @param start Starting point of progressive text output
     
     */
    public getJobProgressiveText(name: string, number: string, start: string, observe?: 'body', headers?: Headers): Observable<any>;
    public getJobProgressiveText(name: string, number: string, start: string, observe?: 'response', headers?: Headers): Observable<HttpResponse<any>>;
    public getJobProgressiveText(name: string, number: string, start: string, observe: any = 'body', headers: Headers = {}): Observable<any> {
        if (name === null || name === undefined){
            throw new Error('Required parameter name was null or undefined when calling getJobProgressiveText.');
        }

        if (number === null || number === undefined){
            throw new Error('Required parameter number was null or undefined when calling getJobProgressiveText.');
        }

        if (start === null || start === undefined){
            throw new Error('Required parameter start was null or undefined when calling getJobProgressiveText.');
        }

        let queryParameters: string[] = [];
        if (start !== undefined) {
            queryParameters.push('start='+encodeURIComponent(String(start)));
        }

        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<any>> = this.httpClient.get(`${this.basePath}/job/${encodeURIComponent(String(name))}/${encodeURIComponent(String(number))}/logText/progressiveText?${queryParameters.join('&')}`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <any>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * Retrieve queue details
     
     */
    public getQueue(observe?: 'body', headers?: Headers): Observable<Queue>;
    public getQueue(observe?: 'response', headers?: Headers): Observable<HttpResponse<Queue>>;
    public getQueue(observe: any = 'body', headers: Headers = {}): Observable<any> {
        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<Queue>> = this.httpClient.get(`${this.basePath}/queue/api/json`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <Queue>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * Retrieve queued item details
     * @param number Queue number
     
     */
    public getQueueItem(number: string, observe?: 'body', headers?: Headers): Observable<Queue>;
    public getQueueItem(number: string, observe?: 'response', headers?: Headers): Observable<HttpResponse<Queue>>;
    public getQueueItem(number: string, observe: any = 'body', headers: Headers = {}): Observable<any> {
        if (number === null || number === undefined){
            throw new Error('Required parameter number was null or undefined when calling getQueueItem.');
        }

        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<Queue>> = this.httpClient.get(`${this.basePath}/queue/item/${encodeURIComponent(String(number))}/api/json`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <Queue>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * Retrieve view details
     * @param name Name of the view
     
     */
    public getView(name: string, observe?: 'body', headers?: Headers): Observable<ListView>;
    public getView(name: string, observe?: 'response', headers?: Headers): Observable<HttpResponse<ListView>>;
    public getView(name: string, observe: any = 'body', headers: Headers = {}): Observable<any> {
        if (name === null || name === undefined){
            throw new Error('Required parameter name was null or undefined when calling getView.');
        }

        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<ListView>> = this.httpClient.get(`${this.basePath}/view/${encodeURIComponent(String(name))}/api/json`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <ListView>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * Retrieve view configuration
     * @param name Name of the view
     
     */
    public getViewConfig(name: string, observe?: 'body', headers?: Headers): Observable<string>;
    public getViewConfig(name: string, observe?: 'response', headers?: Headers): Observable<HttpResponse<string>>;
    public getViewConfig(name: string, observe: any = 'body', headers: Headers = {}): Observable<any> {
        if (name === null || name === undefined){
            throw new Error('Required parameter name was null or undefined when calling getViewConfig.');
        }

        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = 'text/xml';

        const response: Observable<HttpResponse<string>> = this.httpClient.get(`${this.basePath}/view/${encodeURIComponent(String(name))}/config.xml`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <string>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * Retrieve Jenkins headers
     
     */
    public headJenkins(observe?: 'body', headers?: Headers): Observable<any>;
    public headJenkins(observe?: 'response', headers?: Headers): Observable<HttpResponse<any>>;
    public headJenkins(observe: any = 'body', headers: Headers = {}): Observable<any> {
        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<any>> = this.httpClient.head(`${this.basePath}/api/json`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <any>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * Create a new job using job configuration, or copied from an existing job
     * @param name Name of the new job
     * @param from Existing job to copy from
     * @param mode Set to \&#39;copy\&#39; for copying an existing job
     * @param jenkinsCrumb CSRF protection token
     * @param contentType Content type header application/xml
     * @param body Job configuration in config.xml format
     
     */
    public postCreateItem(name: string, from?: string, mode?: string, jenkinsCrumb?: string, contentType?: string, body?: string, observe?: 'body', headers?: Headers): Observable<any>;
    public postCreateItem(name: string, from?: string, mode?: string, jenkinsCrumb?: string, contentType?: string, body?: string, observe?: 'response', headers?: Headers): Observable<HttpResponse<any>>;
    public postCreateItem(name: string, from?: string, mode?: string, jenkinsCrumb?: string, contentType?: string, body?: string, observe: any = 'body', headers: Headers = {}): Observable<any> {
        if (name === null || name === undefined){
            throw new Error('Required parameter name was null or undefined when calling postCreateItem.');
        }

        let queryParameters: string[] = [];
        if (name !== undefined) {
            queryParameters.push('name='+encodeURIComponent(String(name)));
        }
        if (from !== undefined) {
            queryParameters.push('from='+encodeURIComponent(String(from)));
        }
        if (mode !== undefined) {
            queryParameters.push('mode='+encodeURIComponent(String(mode)));
        }

        if (jenkinsCrumb) {
            headers['Jenkins-Crumb'] = String(jenkinsCrumb);
        }

        if (contentType) {
            headers['Content-Type'] = String(contentType);
        }

        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = '*/*';
        headers['Content-Type'] = 'application/json';

        const response: Observable<HttpResponse<any>> = this.httpClient.post(`${this.basePath}/createItem?${queryParameters.join('&')}`, body , headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <any>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * Create a new view using view configuration
     * @param name Name of the new view
     * @param jenkinsCrumb CSRF protection token
     * @param contentType Content type header application/xml
     * @param body View configuration in config.xml format
     
     */
    public postCreateView(name: string, jenkinsCrumb?: string, contentType?: string, body?: string, observe?: 'body', headers?: Headers): Observable<any>;
    public postCreateView(name: string, jenkinsCrumb?: string, contentType?: string, body?: string, observe?: 'response', headers?: Headers): Observable<HttpResponse<any>>;
    public postCreateView(name: string, jenkinsCrumb?: string, contentType?: string, body?: string, observe: any = 'body', headers: Headers = {}): Observable<any> {
        if (name === null || name === undefined){
            throw new Error('Required parameter name was null or undefined when calling postCreateView.');
        }

        let queryParameters: string[] = [];
        if (name !== undefined) {
            queryParameters.push('name='+encodeURIComponent(String(name)));
        }

        if (jenkinsCrumb) {
            headers['Jenkins-Crumb'] = String(jenkinsCrumb);
        }

        if (contentType) {
            headers['Content-Type'] = String(contentType);
        }

        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = '*/*';
        headers['Content-Type'] = 'application/json';

        const response: Observable<HttpResponse<any>> = this.httpClient.post(`${this.basePath}/createView?${queryParameters.join('&')}`, body , headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <any>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * Build a job
     * @param name Name of the job
     * @param json 
     * @param token 
     * @param jenkinsCrumb CSRF protection token
     
     */
    public postJobBuild(name: string, json: string, token?: string, jenkinsCrumb?: string, observe?: 'body', headers?: Headers): Observable<any>;
    public postJobBuild(name: string, json: string, token?: string, jenkinsCrumb?: string, observe?: 'response', headers?: Headers): Observable<HttpResponse<any>>;
    public postJobBuild(name: string, json: string, token?: string, jenkinsCrumb?: string, observe: any = 'body', headers: Headers = {}): Observable<any> {
        if (name === null || name === undefined){
            throw new Error('Required parameter name was null or undefined when calling postJobBuild.');
        }

        if (json === null || json === undefined){
            throw new Error('Required parameter json was null or undefined when calling postJobBuild.');
        }

        let queryParameters: string[] = [];
        if (json !== undefined) {
            queryParameters.push('json='+encodeURIComponent(String(json)));
        }
        if (token !== undefined) {
            queryParameters.push('token='+encodeURIComponent(String(token)));
        }

        if (jenkinsCrumb) {
            headers['Jenkins-Crumb'] = String(jenkinsCrumb);
        }

        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<any>> = this.httpClient.post(`${this.basePath}/job/${encodeURIComponent(String(name))}/build?${queryParameters.join('&')}`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <any>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * Update job configuration
     * @param name Name of the job
     * @param body Job configuration in config.xml format
     * @param jenkinsCrumb CSRF protection token
     
     */
    public postJobConfig(name: string, body: string, jenkinsCrumb?: string, observe?: 'body', headers?: Headers): Observable<any>;
    public postJobConfig(name: string, body: string, jenkinsCrumb?: string, observe?: 'response', headers?: Headers): Observable<HttpResponse<any>>;
    public postJobConfig(name: string, body: string, jenkinsCrumb?: string, observe: any = 'body', headers: Headers = {}): Observable<any> {
        if (name === null || name === undefined){
            throw new Error('Required parameter name was null or undefined when calling postJobConfig.');
        }

        if (body === null || body === undefined){
            throw new Error('Required parameter body was null or undefined when calling postJobConfig.');
        }

        if (jenkinsCrumb) {
            headers['Jenkins-Crumb'] = String(jenkinsCrumb);
        }

        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = '*/*';
        headers['Content-Type'] = 'application/json';

        const response: Observable<HttpResponse<any>> = this.httpClient.post(`${this.basePath}/job/${encodeURIComponent(String(name))}/config.xml`, body , headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <any>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * Delete a job
     * @param name Name of the job
     * @param jenkinsCrumb CSRF protection token
     
     */
    public postJobDelete(name: string, jenkinsCrumb?: string, observe?: 'body', headers?: Headers): Observable<any>;
    public postJobDelete(name: string, jenkinsCrumb?: string, observe?: 'response', headers?: Headers): Observable<HttpResponse<any>>;
    public postJobDelete(name: string, jenkinsCrumb?: string, observe: any = 'body', headers: Headers = {}): Observable<any> {
        if (name === null || name === undefined){
            throw new Error('Required parameter name was null or undefined when calling postJobDelete.');
        }

        if (jenkinsCrumb) {
            headers['Jenkins-Crumb'] = String(jenkinsCrumb);
        }

        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<any>> = this.httpClient.post(`${this.basePath}/job/${encodeURIComponent(String(name))}/doDelete`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <any>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * Disable a job
     * @param name Name of the job
     * @param jenkinsCrumb CSRF protection token
     
     */
    public postJobDisable(name: string, jenkinsCrumb?: string, observe?: 'body', headers?: Headers): Observable<any>;
    public postJobDisable(name: string, jenkinsCrumb?: string, observe?: 'response', headers?: Headers): Observable<HttpResponse<any>>;
    public postJobDisable(name: string, jenkinsCrumb?: string, observe: any = 'body', headers: Headers = {}): Observable<any> {
        if (name === null || name === undefined){
            throw new Error('Required parameter name was null or undefined when calling postJobDisable.');
        }

        if (jenkinsCrumb) {
            headers['Jenkins-Crumb'] = String(jenkinsCrumb);
        }

        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<any>> = this.httpClient.post(`${this.basePath}/job/${encodeURIComponent(String(name))}/disable`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <any>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * Enable a job
     * @param name Name of the job
     * @param jenkinsCrumb CSRF protection token
     
     */
    public postJobEnable(name: string, jenkinsCrumb?: string, observe?: 'body', headers?: Headers): Observable<any>;
    public postJobEnable(name: string, jenkinsCrumb?: string, observe?: 'response', headers?: Headers): Observable<HttpResponse<any>>;
    public postJobEnable(name: string, jenkinsCrumb?: string, observe: any = 'body', headers: Headers = {}): Observable<any> {
        if (name === null || name === undefined){
            throw new Error('Required parameter name was null or undefined when calling postJobEnable.');
        }

        if (jenkinsCrumb) {
            headers['Jenkins-Crumb'] = String(jenkinsCrumb);
        }

        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<any>> = this.httpClient.post(`${this.basePath}/job/${encodeURIComponent(String(name))}/enable`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <any>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * Stop a job
     * @param name Name of the job
     * @param jenkinsCrumb CSRF protection token
     
     */
    public postJobLastBuildStop(name: string, jenkinsCrumb?: string, observe?: 'body', headers?: Headers): Observable<any>;
    public postJobLastBuildStop(name: string, jenkinsCrumb?: string, observe?: 'response', headers?: Headers): Observable<HttpResponse<any>>;
    public postJobLastBuildStop(name: string, jenkinsCrumb?: string, observe: any = 'body', headers: Headers = {}): Observable<any> {
        if (name === null || name === undefined){
            throw new Error('Required parameter name was null or undefined when calling postJobLastBuildStop.');
        }

        if (jenkinsCrumb) {
            headers['Jenkins-Crumb'] = String(jenkinsCrumb);
        }

        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<any>> = this.httpClient.post(`${this.basePath}/job/${encodeURIComponent(String(name))}/lastBuild/stop`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <any>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * Update view configuration
     * @param name Name of the view
     * @param body View configuration in config.xml format
     * @param jenkinsCrumb CSRF protection token
     
     */
    public postViewConfig(name: string, body: string, jenkinsCrumb?: string, observe?: 'body', headers?: Headers): Observable<any>;
    public postViewConfig(name: string, body: string, jenkinsCrumb?: string, observe?: 'response', headers?: Headers): Observable<HttpResponse<any>>;
    public postViewConfig(name: string, body: string, jenkinsCrumb?: string, observe: any = 'body', headers: Headers = {}): Observable<any> {
        if (name === null || name === undefined){
            throw new Error('Required parameter name was null or undefined when calling postViewConfig.');
        }

        if (body === null || body === undefined){
            throw new Error('Required parameter body was null or undefined when calling postViewConfig.');
        }

        if (jenkinsCrumb) {
            headers['Jenkins-Crumb'] = String(jenkinsCrumb);
        }

        // authentication (jenkins_auth) required
        if (this.APIConfiguration.username || this.APIConfiguration.password) {
            headers['Authorization'] = btoa(this.APIConfiguration.username + ':' + this.APIConfiguration.password);
        }
        headers['Accept'] = '*/*';
        headers['Content-Type'] = 'application/json';

        const response: Observable<HttpResponse<any>> = this.httpClient.post(`${this.basePath}/view/${encodeURIComponent(String(name))}/config.xml`, body , headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <any>(httpResponse.response))
               );
        }
        return response;
    }

}
