package org.openapitools.api;

/**
 * The exception that can be used to store the HTTP status code returned by an API response.
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2024-03-15T14:12:30.252284764Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class ApiException extends Exception {
    /** The HTTP status code. */
    private int code;

    /**
     * Constructor.
     *
     * @param code The HTTP status code.
     * @param msg The error message.
     */
    public ApiException(int code, String msg) {
        super(msg);
        this.code = code;
    }

    /**
     * Get the HTTP status code.
     *
     * @return The HTTP status code.
     */
    public int getCode() {
        return code;
    }

    @Override
    public String toString() {
        return "ApiException{" +
               "code=" + code +
               '}';
    }
}
