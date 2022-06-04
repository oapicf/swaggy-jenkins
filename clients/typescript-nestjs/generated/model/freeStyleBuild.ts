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
import { EmptyChangeLogSet } from './emptyChangeLogSet';
import { CauseAction } from './causeAction';


export interface FreeStyleBuild { 
    _class?: string;
    number?: number;
    url?: string;
    actions?: Array<CauseAction>;
    building?: boolean;
    description?: string;
    displayName?: string;
    duration?: number;
    estimatedDuration?: number;
    executor?: string;
    fullDisplayName?: string;
    id?: string;
    keepLog?: boolean;
    queueId?: number;
    result?: string;
    timestamp?: number;
    builtOn?: string;
    changeSet?: EmptyChangeLogSet;
}

