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

import { autoinject } from 'aurelia-framework';
import { HttpClient } from 'aurelia-http-client';
import { Api } from './Api';
import { AuthStorage } from './AuthStorage';
import {
  DefaultCrumbIssuer,
} from './models';

/**
 * getCrumb - parameters interface
 */
export interface IGetCrumbParams {
}

/**
 * BaseApi - API class
 */
@autoinject()
export class BaseApi extends Api {

  /**
   * Creates a new BaseApi class.
   *
   * @param httpClient The Aurelia HTTP client to be injected.
   * @param authStorage A storage for authentication data.
   */
  constructor(httpClient: HttpClient, authStorage: AuthStorage) {
    super(httpClient, authStorage);
  }

  /**
   * Retrieve CSRF protection token
   */
  async getCrumb(): Promise<DefaultCrumbIssuer> {
    // Verify required parameters are set

    // Create URL to call
    const url = `${this.basePath}/crumbIssuer/api/json`;

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asGet()

      // Authentication 'jenkins_auth' required
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

}

