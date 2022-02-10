// typings for btoa are incorrect
import { RequestContext } from "../http/http";

/**
 * Interface authentication schemes.
 */
export interface SecurityAuthentication {
    /*
     * @return returns the name of the security authentication as specified in OAI
     */
    getName(): string;

    /**
     * Applies the authentication scheme to the request context
     *
     * @params context the request context which should use this authentication scheme
     */
    applySecurityAuthentication(context: RequestContext): void | Promise<void>;
}

export interface TokenProvider {
  getToken(): Promise<string> | string;
}

/**
 * Applies http authentication to the request context.
 */
export class JenkinsAuthAuthentication implements SecurityAuthentication {
    /**
     * Configures the http authentication with the required details.
     *
     * @param username username for http basic authentication
     * @param password password for http basic authentication
     */
    public constructor(
        private username: string,
        private password: string
    ) {}

    public getName(): string {
        return "jenkins_auth";
    }

    public applySecurityAuthentication(context: RequestContext) {
        let comb = this.username + ":" + this.password;
        context.setHeaderParam("Authorization", "Basic " + btoa(comb));
    }
}

/**
 * Applies apiKey authentication to the request context.
 */
export class JwtAuthAuthentication implements SecurityAuthentication {
    /**
     * Configures this api key authentication with the necessary properties
     *
     * @param apiKey: The api key to be used for every request
     */
    public constructor(private apiKey: string) {}

    public getName(): string {
        return "jwt_auth";
    }

    public applySecurityAuthentication(context: RequestContext) {
        context.setHeaderParam("Authorization", this.apiKey);
    }
}


export type AuthMethods = {
    "default"?: SecurityAuthentication,
    "jenkins_auth"?: SecurityAuthentication,
    "jwt_auth"?: SecurityAuthentication
}

export type ApiKeyConfiguration = string;
export type HttpBasicConfiguration = { "username": string, "password": string };
export type HttpBearerConfiguration = { tokenProvider: TokenProvider };
export type OAuth2Configuration = { accessToken: string };

export type AuthMethodsConfiguration = {
    "default"?: SecurityAuthentication,
    "jenkins_auth"?: HttpBasicConfiguration,
    "jwt_auth"?: ApiKeyConfiguration
}

/**
 * Creates the authentication methods from a swagger description.
 *
 */
export function configureAuthMethods(config: AuthMethodsConfiguration | undefined): AuthMethods {
    let authMethods: AuthMethods = {}

    if (!config) {
        return authMethods;
    }
    authMethods["default"] = config["default"]

    if (config["jenkins_auth"]) {
        authMethods["jenkins_auth"] = new JenkinsAuthAuthentication(
            config["jenkins_auth"]["username"],
            config["jenkins_auth"]["password"]
        );
    }

    if (config["jwt_auth"]) {
        authMethods["jwt_auth"] = new JwtAuthAuthentication(
            config["jwt_auth"]
        );
    }

    return authMethods;
}