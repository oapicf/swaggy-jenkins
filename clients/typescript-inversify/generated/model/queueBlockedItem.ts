/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { CauseAction } from './causeAction';
import { FreeStyleProject } from './freeStyleProject';


export interface QueueBlockedItem { 
    _class?: string;
    actions?: Array<CauseAction>;
    blocked?: boolean;
    buildable?: boolean;
    id?: number;
    inQueueSince?: number;
    params?: string;
    stuck?: boolean;
    task?: FreeStyleProject;
    url?: string;
    why?: string;
    buildableStartMilliseconds?: number;
}
