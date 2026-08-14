package org.openapitools.api.consumer;

import org.openapitools.model.*;
import org.openapitools.api.interfaces.JwtAuthService;
import java.util.List;
import java.util.Map;
import java.time.OffsetDateTime;
import java.time.LocalDate;
import java.time.LocalDateTime;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Generated;


@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

@RestController
@RequestMapping("/jwt-auth")
public class JwtAuthServiceController {

    @DubboReference
    private JwtAuthService jwtAuthService;

    @RequestMapping(method = RequestMethod.GET, value = "/jwks/{key}")
    public String getJsonWebKey(
        @RequestParam(name = "key") Integer key
    ) {
        return jwtAuthService.getJsonWebKey(key);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/token")
    public String getJsonWebToken(
        @RequestParam(name = "expiryTimeInMins") Integer expiryTimeInMins,
        @RequestParam(name = "maxExpiryTimeInMins") Integer maxExpiryTimeInMins
    ) {
        return jwtAuthService.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins);
    }
}
