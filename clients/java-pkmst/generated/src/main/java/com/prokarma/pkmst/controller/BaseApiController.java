package com.prokarma.pkmst.controller;

import com.prokarma.pkmst.model.DefaultCrumbIssuer;

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
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
/**
 * Api implementation
 * @author pkmst
 *
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2022-02-11T12:41:57.902127Z[Etc/UTC]")
@Controller
public class BaseApiController implements BaseApi {
    private final ObjectMapper objectMapper;
@Autowired
    public BaseApiController(ObjectMapper objectMapper) {
        this.objectMapper = objectMapper;
    }

    public ResponseEntity<DefaultCrumbIssuer> getCrumb(@RequestHeader(value = "Accept", required = false) String accept) throws Exception {
        // do some magic!

        if (accept != null && accept.contains("application/json")) {
            return new ResponseEntity<DefaultCrumbIssuer>(objectMapper.readValue("", DefaultCrumbIssuer.class), HttpStatus.OK);
        }

        return new ResponseEntity<DefaultCrumbIssuer>(HttpStatus.OK);
    }

}
