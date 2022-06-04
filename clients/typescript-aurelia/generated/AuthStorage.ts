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

/**
 * Class to storage authentication data
 */
export class AuthStorage {
  private storage: Map<string, string>;

  constructor() {
    this.storage = new Map();
  }

  /**
   * Sets the jenkins_auth auth method value.
   *
   * @param value The new value to set for jenkins_auth.
   */
  setjenkins_auth(value: string): this {
    this.storage.set('jenkins_auth', value);
    return this;
  }

  /**
   * Removes the jenkins_auth auth method value.
   */
  removejenkins_auth(): this {
    this.storage.delete('jenkins_auth');
    return this;
  }

  /**
   * Gets the jenkins_auth auth method value.
   */
  getjenkins_auth(): null | string {
    return this.storage.get('jenkins_auth') || null;
  }

  /**
   * Sets the jwt_auth auth method value.
   *
   * @param value The new value to set for jwt_auth.
   */
  setjwt_auth(value: string): this {
    this.storage.set('jwt_auth', value);
    return this;
  }

  /**
   * Removes the jwt_auth auth method value.
   */
  removejwt_auth(): this {
    this.storage.delete('jwt_auth');
    return this;
  }

  /**
   * Gets the jwt_auth auth method value.
   */
  getjwt_auth(): null | string {
    return this.storage.get('jwt_auth') || null;
  }
}
