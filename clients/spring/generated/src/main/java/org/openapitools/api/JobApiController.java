package org.openapitools.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.NativeWebRequest;
import java.util.Optional;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2018-08-21T04:42:22.775Z[GMT]")

@Controller
@RequestMapping("${openapi.swaggyJenkins.base-path:/}")
public class JobApiController implements JobApi {

    private final NativeWebRequest request;

    @org.springframework.beans.factory.annotation.Autowired
    public JobApiController(NativeWebRequest request) {
        this.request = request;
    }

    @Override
    public Optional<NativeWebRequest> getRequest() {
        return Optional.ofNullable(request);
    }

}
