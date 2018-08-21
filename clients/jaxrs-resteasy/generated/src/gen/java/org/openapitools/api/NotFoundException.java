package org.openapitools.api;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2018-08-21T02:12:32.019Z[GMT]")
public class NotFoundException extends ApiException {
    private int code;
    public NotFoundException (int code, String msg) {
        super(code, msg);
        this.code = code;
    }
}
