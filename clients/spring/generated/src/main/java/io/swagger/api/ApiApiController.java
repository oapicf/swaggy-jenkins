package io.swagger.api;

import io.swagger.model.HudsonmodelHudson;

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

import javax.validation.constraints.*;
import javax.validation.Valid;
@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen", date = "2017-07-25T10:46:28.251+10:00")

@Controller
public class ApiApiController implements ApiApi {



    public ResponseEntity<HudsonmodelHudson> getJenkins() {
        // do some magic!
        return new ResponseEntity<HudsonmodelHudson>(HttpStatus.OK);
    }

    public ResponseEntity<Void> headJenkins() {
        // do some magic!
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

}
