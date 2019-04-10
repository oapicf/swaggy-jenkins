package org.openapitools.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.NativeWebRequest;
import java.util.Optional;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2019-04-10T03:57:34.567Z[GMT]")

@Controller
@RequestMapping("${openapi.swaggyJenkins.base-path:/}")
public class CreateViewApiController implements CreateViewApi {

    private final NativeWebRequest request;

    @org.springframework.beans.factory.annotation.Autowired
    public CreateViewApiController(NativeWebRequest request) {
        this.request = request;
    }

    @Override
    public Optional<NativeWebRequest> getRequest() {
        return Optional.ofNullable(request);
    }

}
