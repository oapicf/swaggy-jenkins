/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { FavoriteImpllinks } from './favoriteImpllinks';
import { PipelineImpl } from './pipelineImpl';


export interface FavoriteImpl { 
    _class?: string;
    _links?: FavoriteImpllinks;
    item?: PipelineImpl;
}
