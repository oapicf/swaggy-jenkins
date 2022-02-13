package org.openapitools.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.request.NativeWebRequest;
import java.util.Optional;
import javax.annotation.Generated;

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2022-02-13T02:39:21.029908Z[Etc/UTC]")
@Controller
@RequestMapping("${openapi.swaggyJenkins.base-path:}")
public class JwtAuthApiController implements JwtAuthApi {

    private final NativeWebRequest request;

    @Autowired
    public JwtAuthApiController(NativeWebRequest request) {
        this.request = request;
    }

    @Override
    public Optional<NativeWebRequest> getRequest() {
        return Optional.ofNullable(request);
    }

}
