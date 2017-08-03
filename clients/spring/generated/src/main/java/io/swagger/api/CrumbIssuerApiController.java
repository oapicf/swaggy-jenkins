package io.swagger.api;

import io.swagger.model.DefaultCrumbIssuer;

import io.swagger.annotations.*;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import javax.validation.constraints.*;
import javax.validation.Valid;
@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen", date = "2017-08-03T23:37:43.850Z")

@Controller
public class CrumbIssuerApiController implements CrumbIssuerApi {
    private final ObjectMapper objectMapper;

    public CrumbIssuerApiController(ObjectMapper objectMapper) {
        this.objectMapper = objectMapper;
    }

    public ResponseEntity<DefaultCrumbIssuer> getCrumb(@RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<DefaultCrumbIssuer>(objectMapper.readValue("{  \"crumb\" : \"crumb\",  \"_class\" : \"_class\",  \"crumbRequestField\" : \"crumbRequestField\"}", DefaultCrumbIssuer.class), HttpStatus.OK);
        }

        return new ResponseEntity<DefaultCrumbIssuer>(HttpStatus.OK);
    }

}
