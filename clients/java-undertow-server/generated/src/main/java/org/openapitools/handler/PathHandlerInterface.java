/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI document version: 1.1.2-pre.0
 * Maintained by: blah@cliffano.com
 *
 * AUTO-GENERATED FILE, DO NOT MODIFY!
 */
package org.openapitools.handler;

import io.undertow.server.*;
import io.undertow.util.*;

import org.openapitools.model.*;

@SuppressWarnings("TooManyFunctions")
public interface PathHandlerInterface {

    /**
     * <p>Retrieve CSRF protection token</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/crumbIssuer/api/json" (<i>privileged: true</i>)</p>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link DefaultCrumbIssuer}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved CSRF protection token</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getCrumb();

    /**
     * <p>Delete queue item from an organization pipeline queue</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#DELETE DELETE} "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>queue</b>"
     * <p>Name of the queue item</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully deleted queue item</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler deletePipelineQueueItem();

    /**
     * <p>Retrieve authenticated user details for an organization</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/user/" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link User}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved authenticated user details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getAuthenticatedUser();

    /**
     * <p>Get a list of class names supported by a given class</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/classes/{class}" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>class</b>"
     * <p>Name of the class</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link String}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved class names</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getClasses();

    /**
     * <p>Retrieve JSON Web Key</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/jwt-auth/jwks/{key}" (<i>privileged: false</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>key</b>"
     * <p>Key ID received as part of JWT header field kid</p>
     * <p>
     * - Parameter type: <b>{@link Integer}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link String}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved JWT token</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getJsonWebKey();

    /**
     * <p>Retrieve JSON Web Token</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/jwt-auth/token" (<i>privileged: false</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>expiryTimeInMins</b>"
     * <p>Token expiry time in minutes, default: 30 minutes</p>
     * <p>
     * - Parameter type: <b>{@link Integer}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>maxExpiryTimeInMins</b>"
     * <p>Maximum token expiry time in minutes, default: 480 minutes</p>
     * <p>
     * - Parameter type: <b>{@link Integer}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link String}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved JWT token</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getJsonWebToken();

    /**
     * <p>Retrieve organization details</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link Organisation}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved pipeline details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * <li><b>404 (client error)</b>: Pipeline cannot be found on Jenkins instance</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getOrganisation();

    /**
     * <p>Retrieve all organizations details</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/" (<i>privileged: true</i>)</p>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link java.util.List List} of {@link Organisation}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved pipelines details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getOrganisations();

    /**
     * <p>Retrieve pipeline details for an organization</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/pipelines/{pipeline}" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link Pipeline}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved pipeline details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * <li><b>404 (client error)</b>: Pipeline cannot be found on Jenkins instance</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getPipeline();

    /**
     * <p>Retrieve all activities details for an organization pipeline</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link java.util.List List} of {@link PipelineActivity}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved all activities details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getPipelineActivities();

    /**
     * <p>Retrieve branch details for an organization pipeline</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>branch</b>"
     * <p>Name of the branch</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link BranchImpl}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved branch details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getPipelineBranch();

    /**
     * <p>Retrieve branch run details for an organization pipeline</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>branch</b>"
     * <p>Name of the branch</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>run</b>"
     * <p>Name of the run</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link PipelineRun}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved run details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getPipelineBranchRun();

    /**
     * <p>Retrieve all branches details for an organization pipeline</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link MultibranchPipeline}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved all branches details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getPipelineBranches();

    /**
     * <p>Retrieve pipeline folder for an organization</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/pipelines/{folder}/" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>folder</b>"
     * <p>Name of the folder</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link PipelineFolderImpl}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved folder details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getPipelineFolder();

    /**
     * <p>Retrieve pipeline details for an organization folder</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>folder</b>"
     * <p>Name of the folder</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link PipelineImpl}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved pipeline details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getPipelineFolderPipeline();

    /**
     * <p>Retrieve queue details for an organization pipeline</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link java.util.List List} of {@link QueueItemImpl}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved queue details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getPipelineQueue();

    /**
     * <p>Retrieve run details for an organization pipeline</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>run</b>"
     * <p>Name of the run</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link PipelineRun}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved run details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getPipelineRun();

    /**
     * <p>Get log for a pipeline run</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>run</b>"
     * <p>Name of the run</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>start</b>"
     * <p>Start position of the log</p>
     * <p>
     * - Parameter type: <b>{@link Integer}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>download</b>"
     * <p>Set to true in order to download the file, otherwise it's passed as a response body</p>
     * <p>
     * - Parameter type: <b>{@link Boolean}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link String}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved pipeline run log</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getPipelineRunLog();

    /**
     * <p>Retrieve run node details for an organization pipeline</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>run</b>"
     * <p>Name of the run</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>node</b>"
     * <p>Name of the node</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link PipelineRunNode}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved run node details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getPipelineRunNode();

    /**
     * <p>Retrieve run node details for an organization pipeline</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>run</b>"
     * <p>Name of the run</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>node</b>"
     * <p>Name of the node</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>step</b>"
     * <p>Name of the step</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link PipelineStepImpl}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved run node step details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getPipelineRunNodeStep();

    /**
     * <p>Get log for a pipeline run node step</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>run</b>"
     * <p>Name of the run</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>node</b>"
     * <p>Name of the node</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>step</b>"
     * <p>Name of the step</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link String}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved pipeline run node step log</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getPipelineRunNodeStepLog();

    /**
     * <p>Retrieve run node steps details for an organization pipeline</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>run</b>"
     * <p>Name of the run</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>node</b>"
     * <p>Name of the node</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link java.util.List List} of {@link PipelineStepImpl}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved run node steps details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getPipelineRunNodeSteps();

    /**
     * <p>Retrieve run nodes details for an organization pipeline</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>run</b>"
     * <p>Name of the run</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link java.util.List List} of {@link PipelineRunNode}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved run nodes details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getPipelineRunNodes();

    /**
     * <p>Retrieve all runs details for an organization pipeline</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link java.util.List List} of {@link PipelineRun}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved runs details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getPipelineRuns();

    /**
     * <p>Retrieve all pipelines details for an organization</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/pipelines/" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link java.util.List List} of {@link Pipeline}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved pipelines details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getPipelines();

    /**
     * <p>Retrieve SCM details for an organization</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/scm/{scm}" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>scm</b>"
     * <p>Name of SCM</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link GithubScm}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved SCM details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getSCM();

    /**
     * <p>Retrieve SCM organization repositories details for an organization</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>scm</b>"
     * <p>Name of SCM</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>scmOrganisation</b>"
     * <p>Name of the SCM organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>credentialId</b>"
     * <p>Credential ID</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pageSize</b>"
     * <p>Number of items in a page</p>
     * <p>
     * - Parameter type: <b>{@link Integer}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pageNumber</b>"
     * <p>Page number</p>
     * <p>
     * - Parameter type: <b>{@link Integer}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link java.util.List List} of {@link GithubOrganization}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved SCM organization repositories details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getSCMOrganisationRepositories();

    /**
     * <p>Retrieve SCM organization repository details for an organization</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>scm</b>"
     * <p>Name of SCM</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>scmOrganisation</b>"
     * <p>Name of the SCM organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>repository</b>"
     * <p>Name of the SCM repository</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>credentialId</b>"
     * <p>Credential ID</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link java.util.List List} of {@link GithubOrganization}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved SCM organizations details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getSCMOrganisationRepository();

    /**
     * <p>Retrieve SCM organizations details for an organization</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/scm/{scm}/organizations" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>scm</b>"
     * <p>Name of SCM</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>credentialId</b>"
     * <p>Credential ID</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link java.util.List List} of {@link GithubOrganization}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved SCM organizations details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getSCMOrganisations();

    /**
     * <p>Retrieve user details for an organization</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/users/{user}" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>user</b>"
     * <p>Name of the user</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link User}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved users details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getUser();

    /**
     * <p>Retrieve user favorites details for an organization</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/users/{user}/favorites" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>user</b>"
     * <p>Name of the user</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link java.util.List List} of {@link FavoriteImpl}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved users favorites details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getUserFavorites();

    /**
     * <p>Retrieve users details for an organization</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/organizations/{organization}/users/" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link User}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved users details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getUsers();

    /**
     * <p>Replay an organization pipeline run</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#POST POST} "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>run</b>"
     * <p>Name of the run</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link QueueItemImpl}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully replayed a pipeline run</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler postPipelineRun();

    /**
     * <p>Start a build for an organization pipeline</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#POST POST} "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link QueueItemImpl}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully started a build</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler postPipelineRuns();

    /**
     * <p>Favorite/unfavorite a pipeline</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#PUT PUT} "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Consumes</b>: [{mediaType=application/json}]</p>
     * <p><b>Payload</b>: {@link UNKNOWN_BASE_TYPE} (<i>required: true</i>)</p>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link FavoriteImpl}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully favorited/unfavorited a pipeline</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler putPipelineFavorite();

    /**
     * <p>Stop a build of an organization pipeline</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#PUT PUT} "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>organization</b>"
     * <p>Name of the organization</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>pipeline</b>"
     * <p>Name of the pipeline</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>run</b>"
     * <p>Name of the run</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>blocking</b>"
     * <p>Set to true to make blocking stop, default: false</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>timeOutInSecs</b>"
     * <p>Timeout in seconds, default: 10 seconds</p>
     * <p>
     * - Parameter type: <b>{@link Integer}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link PipelineRun}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully stopped a build</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler putPipelineRun();

    /**
     * <p>Search for any resource details</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/search/" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>q</b>"
     * <p>Query string</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link String}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved search result</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler search();

    /**
     * <p>Get classes details</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/blue/rest/classes/" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>q</b>"
     * <p>Query string containing an array of class names</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link String}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved search result</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler searchClasses();

    /**
     * <p>Retrieve computer details</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/computer/api/json" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>depth</b>"
     * <p>Recursion depth in response model</p>
     * <p>
     * - Parameter type: <b>{@link Integer}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link ComputerSet}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved computer details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getComputer();

    /**
     * <p>Retrieve Jenkins details</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/api/json" (<i>privileged: true</i>)</p>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link Hudson}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved Jenkins details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getJenkins();

    /**
     * <p>Retrieve job details</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/job/{name}/api/json" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>name</b>"
     * <p>Name of the job</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link FreeStyleProject}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved job details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * <li><b>404 (client error)</b>: Job cannot be found on Jenkins instance</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getJob();

    /**
     * <p>Retrieve job configuration</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/job/{name}/config.xml" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>name</b>"
     * <p>Name of the job</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=text/xml}]</p>
     * <p><b>Returns</b>: {@link String}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved job configuration in config.xml format</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * <li><b>404 (client error)</b>: Job cannot be found on Jenkins instance</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getJobConfig();

    /**
     * <p>Retrieve job's last build details</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/job/{name}/lastBuild/api/json" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>name</b>"
     * <p>Name of the job</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link FreeStyleBuild}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved job's last build details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * <li><b>404 (client error)</b>: Job cannot be found on Jenkins instance</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getJobLastBuild();

    /**
     * <p>Retrieve job's build progressive text output</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/job/{name}/{number}/logText/progressiveText" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>name</b>"
     * <p>Name of the job</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>number</b>"
     * <p>Build number</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>start</b>"
     * <p>Starting point of progressive text output</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved job's build progressive text output</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * <li><b>404 (client error)</b>: Job cannot be found on Jenkins instance</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getJobProgressiveText();

    /**
     * <p>Retrieve queue details</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/queue/api/json" (<i>privileged: true</i>)</p>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link Queue}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved queue details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getQueue();

    /**
     * <p>Retrieve queued item details</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/queue/item/{number}/api/json" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>number</b>"
     * <p>Queue number</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link Queue}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved queued item details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getQueueItem();

    /**
     * <p>Retrieve view details</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/view/{name}/api/json" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>name</b>"
     * <p>Name of the view</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=application/json}]</p>
     * <p><b>Returns</b>: {@link ListView}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved view details</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * <li><b>404 (client error)</b>: View cannot be found on Jenkins instance</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getView();

    /**
     * <p>Retrieve view configuration</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#GET GET} "/view/{name}/config.xml" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>name</b>"
     * <p>Name of the view</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Produces</b>: [{mediaType=text/xml}]</p>
     * <p><b>Returns</b>: {@link String}</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved view configuration in config.xml format</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * <li><b>404 (client error)</b>: View cannot be found on Jenkins instance</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler getViewConfig();

    /**
     * <p>Retrieve Jenkins headers</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#HEAD HEAD} "/api/json" (<i>privileged: true</i>)</p>
     * <p><b>Response headers</b>: [CodegenProperty{openApiType='string', baseName='x-jenkins', complexType='null', getter='getxJenkins', setter='setxJenkins', description='Jenkins version number', dataType='String', datatypeWithEnum='String', dataFormat='null', name='xJenkins', min='null', max='null', defaultValue='null', defaultValueWithParam=' = data.x-jenkins;', baseType='String', containerType='null', title='null', unescapedDescription='Jenkins version number', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "type" : "string"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=true, isModel=false, isContainer=false, isString=true, isNumeric=false, isInteger=false, isShort=false, isLong=false, isUnboundedInteger=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='XJenkins', nameInSnakeCase='X_JENKINS', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false, getHasDiscriminatorWithNonEmptyMapping=false, composedSchemas=null, hasMultipleTypes=false}]</p>
     *
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved Jenkins headers</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler headJenkins();

    /**
     * <p>Create a new job using job configuration, or copied from an existing job</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#POST POST} "/createItem" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>name</b>"
     * <p>Name of the new job</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>from</b>"
     * <p>Existing job to copy from</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>mode</b>"
     * <p>Set to 'copy' for copying an existing job</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>Jenkins-Crumb</b>"
     * <p>CSRF protection token</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link Headers Header}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>Content-Type</b>"
     * <p>Content type header application/xml</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link Headers Header}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Consumes</b>: [{mediaType=application/json}]</p>
     * <p><b>Payload</b>: {@link String} (<i>required: false</i>)</p>
     *
     * <p><b>Produces</b>: [{mediaType=*/*}]</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully created a new job</li>
     * <li><b>400 (client error)</b>: An error has occurred - error message is embedded inside the HTML response</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler postCreateItem();

    /**
     * <p>Create a new view using view configuration</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#POST POST} "/createView" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>name</b>"
     * <p>Name of the new view</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>Jenkins-Crumb</b>"
     * <p>CSRF protection token</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link Headers Header}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>Content-Type</b>"
     * <p>Content type header application/xml</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link Headers Header}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Consumes</b>: [{mediaType=application/json}]</p>
     * <p><b>Payload</b>: {@link String} (<i>required: false</i>)</p>
     *
     * <p><b>Produces</b>: [{mediaType=*/*}]</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully created the view</li>
     * <li><b>400 (client error)</b>: An error has occurred - error message is embedded inside the HTML response</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler postCreateView();

    /**
     * <p>Build a job</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#POST POST} "/job/{name}/build" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>name</b>"
     * <p>Name of the job</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>json</b>"
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>token</b>"
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getQueryParameters Query}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>Jenkins-Crumb</b>"
     * <p>CSRF protection token</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link Headers Header}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * </ul>
     *
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully built the job (backward compatibility for older versions of Jenkins)</li>
     * <li><b>201 (success)</b>: Successfully built the job</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * <li><b>404 (client error)</b>: Job cannot be found on Jenkins instance</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler postJobBuild();

    /**
     * <p>Update job configuration</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#POST POST} "/job/{name}/config.xml" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>name</b>"
     * <p>Name of the job</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>Jenkins-Crumb</b>"
     * <p>CSRF protection token</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link Headers Header}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Consumes</b>: [{mediaType=application/json}]</p>
     * <p><b>Payload</b>: {@link String} (<i>required: true</i>)</p>
     *
     * <p><b>Produces</b>: [{mediaType=*/*}]</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully retrieved job configuration in config.xml format</li>
     * <li><b>400 (client error)</b>: An error has occurred - error message is embedded inside the HTML response</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * <li><b>404 (client error)</b>: Job cannot be found on Jenkins instance</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler postJobConfig();

    /**
     * <p>Delete a job</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#POST POST} "/job/{name}/doDelete" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>name</b>"
     * <p>Name of the job</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>Jenkins-Crumb</b>"
     * <p>CSRF protection token</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link Headers Header}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * </ul>
     *
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully deleted the job</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * <li><b>404 (client error)</b>: Job cannot be found on Jenkins instance</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler postJobDelete();

    /**
     * <p>Disable a job</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#POST POST} "/job/{name}/disable" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>name</b>"
     * <p>Name of the job</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>Jenkins-Crumb</b>"
     * <p>CSRF protection token</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link Headers Header}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * </ul>
     *
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully disabled the job</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * <li><b>404 (client error)</b>: Job cannot be found on Jenkins instance</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler postJobDisable();

    /**
     * <p>Enable a job</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#POST POST} "/job/{name}/enable" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>name</b>"
     * <p>Name of the job</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>Jenkins-Crumb</b>"
     * <p>CSRF protection token</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link Headers Header}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * </ul>
     *
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully enabled the job</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * <li><b>404 (client error)</b>: Job cannot be found on Jenkins instance</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler postJobEnable();

    /**
     * <p>Stop a job</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#POST POST} "/job/{name}/lastBuild/stop" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>name</b>"
     * <p>Name of the job</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>Jenkins-Crumb</b>"
     * <p>CSRF protection token</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link Headers Header}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * </ul>
     *
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully stopped the job</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * <li><b>404 (client error)</b>: Job cannot be found on Jenkins instance</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler postJobLastBuildStop();

    /**
     * <p>Update view configuration</p>
     *
     * <p><b>Endpoint</b>: {@link Methods#POST POST} "/view/{name}/config.xml" (<i>privileged: true</i>)</p>
     *
     * <p><b>Request parameters</b>:</p>
     * <ul>
     * <li>
     * <p>"<b>name</b>"
     * <p>Name of the view</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link HttpServerExchange#getPathParameters Path}</b><br/>
     * - Required: <b>true</b>
     * </p>
     * </li>
     * <li>
     * <p>"<b>Jenkins-Crumb</b>"
     * <p>CSRF protection token</p>
     * <p>
     * - Parameter type: <b>{@link String}</b><br/>
     * - Appears in: <b>{@link Headers Header}</b><br/>
     * - Required: <b>false</b>
     * </p>
     * </li>
     * </ul>
     *
     * <p><b>Consumes</b>: [{mediaType=application/json}]</p>
     * <p><b>Payload</b>: {@link String} (<i>required: true</i>)</p>
     *
     * <p><b>Produces</b>: [{mediaType=*/*}]</p>
     *
     * <p><b>Responses</b>:</p>
     * <ul>
     * <li><b>200 (success)</b>: Successfully updated view configuration</li>
     * <li><b>400 (client error)</b>: An error has occurred - error message is embedded inside the HTML response</li>
     * <li><b>401 (client error)</b>: Authentication failed - incorrect username and/or password</li>
     * <li><b>403 (client error)</b>: Jenkins requires authentication - please set username and password</li>
     * <li><b>404 (client error)</b>: View cannot be found on Jenkins instance</li>
     * </ul>
     */
    @javax.annotation.Nonnull
    HttpHandler postViewConfig();
}
