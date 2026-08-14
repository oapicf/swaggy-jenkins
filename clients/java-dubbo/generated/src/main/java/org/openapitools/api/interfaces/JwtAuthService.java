package org.openapitools.api.interfaces;

import org.openapitools.model.*;
import java.util.List;
import java.util.Map;
import java.time.OffsetDateTime;
import java.time.LocalDate;
import java.time.LocalDateTime;
import javax.annotation.Generated;


@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public interface JwtAuthService {

    /**
     * 
     * Retrieve JSON Web Key
     *
     * @param key Key ID received as part of JWT header field kid (required)
     * @return String
     */
    String getJsonWebKey(
        Integer key
    );

    /**
     * 
     * Retrieve JSON Web Token
     *
     * @param expiryTimeInMins Token expiry time in minutes, default: 30 minutes (optional)
     * @param maxExpiryTimeInMins Maximum token expiry time in minutes, default: 480 minutes (optional)
     * @return String
     */
    String getJsonWebToken(
        Integer expiryTimeInMins,
        Integer maxExpiryTimeInMins
    );
}
