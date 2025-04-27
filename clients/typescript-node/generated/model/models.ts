import localVarRequest from 'request';

export * from './allView';
export * from './branchImpl';
export * from './branchImpllinks';
export * from './branchImplpermissions';
export * from './causeAction';
export * from './causeUserIdCause';
export * from './classesByClass';
export * from './clockDifference';
export * from './computerSet';
export * from './defaultCrumbIssuer';
export * from './diskSpaceMonitorDescriptorDiskSpace';
export * from './emptyChangeLogSet';
export * from './extensionClassContainerImpl1';
export * from './extensionClassContainerImpl1links';
export * from './extensionClassContainerImpl1map';
export * from './extensionClassImpl';
export * from './extensionClassImpllinks';
export * from './favoriteImpl';
export * from './favoriteImpllinks';
export * from './freeStyleBuild';
export * from './freeStyleProject';
export * from './freeStyleProjectactions';
export * from './freeStyleProjecthealthReport';
export * from './genericResource';
export * from './githubContent';
export * from './githubFile';
export * from './githubOrganization';
export * from './githubOrganizationlinks';
export * from './githubRepositories';
export * from './githubRepositorieslinks';
export * from './githubRepository';
export * from './githubRepositorylinks';
export * from './githubRepositorypermissions';
export * from './githubRespositoryContainer';
export * from './githubRespositoryContainerlinks';
export * from './githubScm';
export * from './githubScmlinks';
export * from './hudson';
export * from './hudsonMasterComputer';
export * from './hudsonMasterComputerexecutors';
export * from './hudsonMasterComputermonitorData';
export * from './hudsonassignedLabels';
export * from './inputStepImpl';
export * from './inputStepImpllinks';
export * from './label1';
export * from './link';
export * from './listView';
export * from './multibranchPipeline';
export * from './nullSCM';
export * from './organisation';
export * from './pipeline';
export * from './pipelineActivity';
export * from './pipelineActivityartifacts';
export * from './pipelineBranchesitem';
export * from './pipelineBranchesitemlatestRun';
export * from './pipelineBranchesitempullRequest';
export * from './pipelineBranchesitempullRequestlinks';
export * from './pipelineFolderImpl';
export * from './pipelineImpl';
export * from './pipelineImpllinks';
export * from './pipelineRun';
export * from './pipelineRunImpl';
export * from './pipelineRunImpllinks';
export * from './pipelineRunNode';
export * from './pipelineRunNodeedges';
export * from './pipelineRunartifacts';
export * from './pipelineStepImpl';
export * from './pipelineStepImpllinks';
export * from './pipelinelatestRun';
export * from './pipelinelatestRunartifacts';
export * from './queue';
export * from './queueBlockedItem';
export * from './queueItemImpl';
export * from './queueLeftItem';
export * from './responseTimeMonitorData';
export * from './stringParameterDefinition';
export * from './stringParameterValue';
export * from './swapSpaceMonitorMemoryUsage2';
export * from './unlabeledLoadStatistics';
export * from './user';

import * as fs from 'fs';

export interface RequestDetailedFile {
    value: Buffer;
    options?: {
        filename?: string;
        contentType?: string;
    }
}

export type RequestFile = string | Buffer | fs.ReadStream | RequestDetailedFile;


import { AllView } from './allView';
import { BranchImpl } from './branchImpl';
import { BranchImpllinks } from './branchImpllinks';
import { BranchImplpermissions } from './branchImplpermissions';
import { CauseAction } from './causeAction';
import { CauseUserIdCause } from './causeUserIdCause';
import { ClassesByClass } from './classesByClass';
import { ClockDifference } from './clockDifference';
import { ComputerSet } from './computerSet';
import { DefaultCrumbIssuer } from './defaultCrumbIssuer';
import { DiskSpaceMonitorDescriptorDiskSpace } from './diskSpaceMonitorDescriptorDiskSpace';
import { EmptyChangeLogSet } from './emptyChangeLogSet';
import { ExtensionClassContainerImpl1 } from './extensionClassContainerImpl1';
import { ExtensionClassContainerImpl1links } from './extensionClassContainerImpl1links';
import { ExtensionClassContainerImpl1map } from './extensionClassContainerImpl1map';
import { ExtensionClassImpl } from './extensionClassImpl';
import { ExtensionClassImpllinks } from './extensionClassImpllinks';
import { FavoriteImpl } from './favoriteImpl';
import { FavoriteImpllinks } from './favoriteImpllinks';
import { FreeStyleBuild } from './freeStyleBuild';
import { FreeStyleProject } from './freeStyleProject';
import { FreeStyleProjectactions } from './freeStyleProjectactions';
import { FreeStyleProjecthealthReport } from './freeStyleProjecthealthReport';
import { GenericResource } from './genericResource';
import { GithubContent } from './githubContent';
import { GithubFile } from './githubFile';
import { GithubOrganization } from './githubOrganization';
import { GithubOrganizationlinks } from './githubOrganizationlinks';
import { GithubRepositories } from './githubRepositories';
import { GithubRepositorieslinks } from './githubRepositorieslinks';
import { GithubRepository } from './githubRepository';
import { GithubRepositorylinks } from './githubRepositorylinks';
import { GithubRepositorypermissions } from './githubRepositorypermissions';
import { GithubRespositoryContainer } from './githubRespositoryContainer';
import { GithubRespositoryContainerlinks } from './githubRespositoryContainerlinks';
import { GithubScm } from './githubScm';
import { GithubScmlinks } from './githubScmlinks';
import { Hudson } from './hudson';
import { HudsonMasterComputer } from './hudsonMasterComputer';
import { HudsonMasterComputerexecutors } from './hudsonMasterComputerexecutors';
import { HudsonMasterComputermonitorData } from './hudsonMasterComputermonitorData';
import { HudsonassignedLabels } from './hudsonassignedLabels';
import { InputStepImpl } from './inputStepImpl';
import { InputStepImpllinks } from './inputStepImpllinks';
import { Label1 } from './label1';
import { Link } from './link';
import { ListView } from './listView';
import { MultibranchPipeline } from './multibranchPipeline';
import { NullSCM } from './nullSCM';
import { Organisation } from './organisation';
import { Pipeline } from './pipeline';
import { PipelineActivity } from './pipelineActivity';
import { PipelineActivityartifacts } from './pipelineActivityartifacts';
import { PipelineBranchesitem } from './pipelineBranchesitem';
import { PipelineBranchesitemlatestRun } from './pipelineBranchesitemlatestRun';
import { PipelineBranchesitempullRequest } from './pipelineBranchesitempullRequest';
import { PipelineBranchesitempullRequestlinks } from './pipelineBranchesitempullRequestlinks';
import { PipelineFolderImpl } from './pipelineFolderImpl';
import { PipelineImpl } from './pipelineImpl';
import { PipelineImpllinks } from './pipelineImpllinks';
import { PipelineRun } from './pipelineRun';
import { PipelineRunImpl } from './pipelineRunImpl';
import { PipelineRunImpllinks } from './pipelineRunImpllinks';
import { PipelineRunNode } from './pipelineRunNode';
import { PipelineRunNodeedges } from './pipelineRunNodeedges';
import { PipelineRunartifacts } from './pipelineRunartifacts';
import { PipelineStepImpl } from './pipelineStepImpl';
import { PipelineStepImpllinks } from './pipelineStepImpllinks';
import { PipelinelatestRun } from './pipelinelatestRun';
import { PipelinelatestRunartifacts } from './pipelinelatestRunartifacts';
import { Queue } from './queue';
import { QueueBlockedItem } from './queueBlockedItem';
import { QueueItemImpl } from './queueItemImpl';
import { QueueLeftItem } from './queueLeftItem';
import { ResponseTimeMonitorData } from './responseTimeMonitorData';
import { StringParameterDefinition } from './stringParameterDefinition';
import { StringParameterValue } from './stringParameterValue';
import { SwapSpaceMonitorMemoryUsage2 } from './swapSpaceMonitorMemoryUsage2';
import { UnlabeledLoadStatistics } from './unlabeledLoadStatistics';
import { User } from './user';

/* tslint:disable:no-unused-variable */
let primitives = [
                    "string",
                    "boolean",
                    "double",
                    "integer",
                    "long",
                    "float",
                    "number",
                    "any"
                 ];

let enumsMap: {[index: string]: any} = {
}

let typeMap: {[index: string]: any} = {
    "AllView": AllView,
    "BranchImpl": BranchImpl,
    "BranchImpllinks": BranchImpllinks,
    "BranchImplpermissions": BranchImplpermissions,
    "CauseAction": CauseAction,
    "CauseUserIdCause": CauseUserIdCause,
    "ClassesByClass": ClassesByClass,
    "ClockDifference": ClockDifference,
    "ComputerSet": ComputerSet,
    "DefaultCrumbIssuer": DefaultCrumbIssuer,
    "DiskSpaceMonitorDescriptorDiskSpace": DiskSpaceMonitorDescriptorDiskSpace,
    "EmptyChangeLogSet": EmptyChangeLogSet,
    "ExtensionClassContainerImpl1": ExtensionClassContainerImpl1,
    "ExtensionClassContainerImpl1links": ExtensionClassContainerImpl1links,
    "ExtensionClassContainerImpl1map": ExtensionClassContainerImpl1map,
    "ExtensionClassImpl": ExtensionClassImpl,
    "ExtensionClassImpllinks": ExtensionClassImpllinks,
    "FavoriteImpl": FavoriteImpl,
    "FavoriteImpllinks": FavoriteImpllinks,
    "FreeStyleBuild": FreeStyleBuild,
    "FreeStyleProject": FreeStyleProject,
    "FreeStyleProjectactions": FreeStyleProjectactions,
    "FreeStyleProjecthealthReport": FreeStyleProjecthealthReport,
    "GenericResource": GenericResource,
    "GithubContent": GithubContent,
    "GithubFile": GithubFile,
    "GithubOrganization": GithubOrganization,
    "GithubOrganizationlinks": GithubOrganizationlinks,
    "GithubRepositories": GithubRepositories,
    "GithubRepositorieslinks": GithubRepositorieslinks,
    "GithubRepository": GithubRepository,
    "GithubRepositorylinks": GithubRepositorylinks,
    "GithubRepositorypermissions": GithubRepositorypermissions,
    "GithubRespositoryContainer": GithubRespositoryContainer,
    "GithubRespositoryContainerlinks": GithubRespositoryContainerlinks,
    "GithubScm": GithubScm,
    "GithubScmlinks": GithubScmlinks,
    "Hudson": Hudson,
    "HudsonMasterComputer": HudsonMasterComputer,
    "HudsonMasterComputerexecutors": HudsonMasterComputerexecutors,
    "HudsonMasterComputermonitorData": HudsonMasterComputermonitorData,
    "HudsonassignedLabels": HudsonassignedLabels,
    "InputStepImpl": InputStepImpl,
    "InputStepImpllinks": InputStepImpllinks,
    "Label1": Label1,
    "Link": Link,
    "ListView": ListView,
    "MultibranchPipeline": MultibranchPipeline,
    "NullSCM": NullSCM,
    "Organisation": Organisation,
    "Pipeline": Pipeline,
    "PipelineActivity": PipelineActivity,
    "PipelineActivityartifacts": PipelineActivityartifacts,
    "PipelineBranchesitem": PipelineBranchesitem,
    "PipelineBranchesitemlatestRun": PipelineBranchesitemlatestRun,
    "PipelineBranchesitempullRequest": PipelineBranchesitempullRequest,
    "PipelineBranchesitempullRequestlinks": PipelineBranchesitempullRequestlinks,
    "PipelineFolderImpl": PipelineFolderImpl,
    "PipelineImpl": PipelineImpl,
    "PipelineImpllinks": PipelineImpllinks,
    "PipelineRun": PipelineRun,
    "PipelineRunImpl": PipelineRunImpl,
    "PipelineRunImpllinks": PipelineRunImpllinks,
    "PipelineRunNode": PipelineRunNode,
    "PipelineRunNodeedges": PipelineRunNodeedges,
    "PipelineRunartifacts": PipelineRunartifacts,
    "PipelineStepImpl": PipelineStepImpl,
    "PipelineStepImpllinks": PipelineStepImpllinks,
    "PipelinelatestRun": PipelinelatestRun,
    "PipelinelatestRunartifacts": PipelinelatestRunartifacts,
    "Queue": Queue,
    "QueueBlockedItem": QueueBlockedItem,
    "QueueItemImpl": QueueItemImpl,
    "QueueLeftItem": QueueLeftItem,
    "ResponseTimeMonitorData": ResponseTimeMonitorData,
    "StringParameterDefinition": StringParameterDefinition,
    "StringParameterValue": StringParameterValue,
    "SwapSpaceMonitorMemoryUsage2": SwapSpaceMonitorMemoryUsage2,
    "UnlabeledLoadStatistics": UnlabeledLoadStatistics,
    "User": User,
}

// Check if a string starts with another string without using es6 features
function startsWith(str: string, match: string): boolean {
    return str.substring(0, match.length) === match;
}

// Check if a string ends with another string without using es6 features
function endsWith(str: string, match: string): boolean {
    return str.length >= match.length && str.substring(str.length - match.length) === match;
}

const nullableSuffix = " | null";
const optionalSuffix = " | undefined";
const arrayPrefix = "Array<";
const arraySuffix = ">";
const mapPrefix = "{ [key: string]: ";
const mapSuffix = "; }";

export class ObjectSerializer {
    public static findCorrectType(data: any, expectedType: string) {
        if (data == undefined) {
            return expectedType;
        } else if (primitives.indexOf(expectedType.toLowerCase()) !== -1) {
            return expectedType;
        } else if (expectedType === "Date") {
            return expectedType;
        } else {
            if (enumsMap[expectedType]) {
                return expectedType;
            }

            if (!typeMap[expectedType]) {
                return expectedType; // w/e we don't know the type
            }

            // Check the discriminator
            let discriminatorProperty = typeMap[expectedType].discriminator;
            if (discriminatorProperty == null) {
                return expectedType; // the type does not have a discriminator. use it.
            } else {
                if (data[discriminatorProperty]) {
                    var discriminatorType = data[discriminatorProperty];
                    if(typeMap[discriminatorType]){
                        return discriminatorType; // use the type given in the discriminator
                    } else {
                        return expectedType; // discriminator did not map to a type
                    }
                } else {
                    return expectedType; // discriminator was not present (or an empty string)
                }
            }
        }
    }

    public static serialize(data: any, type: string): any {
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (endsWith(type, nullableSuffix)) {
            let subType: string = type.slice(0, -nullableSuffix.length); // Type | null => Type
            return ObjectSerializer.serialize(data, subType);
        } else if (endsWith(type, optionalSuffix)) {
            let subType: string = type.slice(0, -optionalSuffix.length); // Type | undefined => Type
            return ObjectSerializer.serialize(data, subType);
        } else if (startsWith(type, arrayPrefix)) {
            let subType: string = type.slice(arrayPrefix.length, -arraySuffix.length); // Array<Type> => Type
            let transformedData: any[] = [];
            for (let index = 0; index < data.length; index++) {
                let datum = data[index];
                transformedData.push(ObjectSerializer.serialize(datum, subType));
            }
            return transformedData;
        } else if (startsWith(type, mapPrefix)) {
            let subType: string = type.slice(mapPrefix.length, -mapSuffix.length); // { [key: string]: Type; } => Type
            let transformedData: { [key: string]: any } = {};
            for (let key in data) {
                transformedData[key] = ObjectSerializer.serialize(
                    data[key],
                    subType,
                );
            }
            return transformedData;
        } else if (type === "Date") {
            return data.toISOString();
        } else {
            if (enumsMap[type]) {
                return data;
            }
            if (!typeMap[type]) { // in case we dont know the type
                return data;
            }

            // Get the actual type of this object
            type = this.findCorrectType(data, type);

            // get the map for the correct type.
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            let instance: {[index: string]: any} = {};
            for (let index = 0; index < attributeTypes.length; index++) {
                let attributeType = attributeTypes[index];
                instance[attributeType.baseName] = ObjectSerializer.serialize(data[attributeType.name], attributeType.type);
            }
            return instance;
        }
    }

    public static deserialize(data: any, type: string): any {
        // polymorphism may change the actual type.
        type = ObjectSerializer.findCorrectType(data, type);
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (endsWith(type, nullableSuffix)) {
            let subType: string = type.slice(0, -nullableSuffix.length); // Type | null => Type
            return ObjectSerializer.deserialize(data, subType);
        } else if (endsWith(type, optionalSuffix)) {
            let subType: string = type.slice(0, -optionalSuffix.length); // Type | undefined => Type
            return ObjectSerializer.deserialize(data, subType);
        } else if (startsWith(type, arrayPrefix)) {
            let subType: string = type.slice(arrayPrefix.length, -arraySuffix.length); // Array<Type> => Type
            let transformedData: any[] = [];
            for (let index = 0; index < data.length; index++) {
                let datum = data[index];
                transformedData.push(ObjectSerializer.deserialize(datum, subType));
            }
            return transformedData;
        } else if (startsWith(type, mapPrefix)) {
            let subType: string = type.slice(mapPrefix.length, -mapSuffix.length); // { [key: string]: Type; } => Type
            let transformedData: { [key: string]: any } = {};
            for (let key in data) {
                transformedData[key] = ObjectSerializer.deserialize(
                    data[key],
                    subType,
                );
            }
            return transformedData;
        } else if (type === "Date") {
            return new Date(data);
        } else {
            if (enumsMap[type]) {// is Enum
                return data;
            }

            if (!typeMap[type]) { // dont know the type
                return data;
            }
            let instance = new typeMap[type]();
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            for (let index = 0; index < attributeTypes.length; index++) {
                let attributeType = attributeTypes[index];
                instance[attributeType.name] = ObjectSerializer.deserialize(data[attributeType.baseName], attributeType.type);
            }
            return instance;
        }
    }
}

export interface Authentication {
    /**
    * Apply authentication settings to header and query params.
    */
    applyToRequest(requestOptions: localVarRequest.Options): Promise<void> | void;
}

export class HttpBasicAuth implements Authentication {
    public username: string = '';
    public password: string = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        requestOptions.auth = {
            username: this.username, password: this.password
        }
    }
}

export class HttpBearerAuth implements Authentication {
    public accessToken: string | (() => string) = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (requestOptions && requestOptions.headers) {
            const accessToken = typeof this.accessToken === 'function'
                            ? this.accessToken()
                            : this.accessToken;
            requestOptions.headers["Authorization"] = "Bearer " + accessToken;
        }
    }
}

export class ApiKeyAuth implements Authentication {
    public apiKey: string = '';

    constructor(private location: string, private paramName: string) {
    }

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (this.location == "query") {
            (<any>requestOptions.qs)[this.paramName] = this.apiKey;
        } else if (this.location == "header" && requestOptions && requestOptions.headers) {
            requestOptions.headers[this.paramName] = this.apiKey;
        } else if (this.location == 'cookie' && requestOptions && requestOptions.headers) {
            if (requestOptions.headers['Cookie']) {
                requestOptions.headers['Cookie'] += '; ' + this.paramName + '=' + encodeURIComponent(this.apiKey);
            }
            else {
                requestOptions.headers['Cookie'] = this.paramName + '=' + encodeURIComponent(this.apiKey);
            }
        }
    }
}

export class OAuth implements Authentication {
    public accessToken: string = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (requestOptions && requestOptions.headers) {
            requestOptions.headers["Authorization"] = "Bearer " + this.accessToken;
        }
    }
}

export class VoidAuth implements Authentication {
    public username: string = '';
    public password: string = '';

    applyToRequest(_: localVarRequest.Options): void {
        // Do nothing
    }
}

export type Interceptor = (requestOptions: localVarRequest.Options) => (Promise<void> | void);
