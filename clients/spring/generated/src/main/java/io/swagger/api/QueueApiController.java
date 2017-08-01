package io.swagger.api;

import io.swagger.model.HudsonmodelQueue;

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
public class QueueApiController implements QueueApi {



    public ResponseEntity<HudsonmodelQueue> getQueue() {
        // do some magic!
        return new ResponseEntity<HudsonmodelQueue>(HttpStatus.OK);
    }

    public ResponseEntity<HudsonmodelQueue> getQueueItem(@ApiParam(value = "Queue number",required=true ) @PathVariable("number") String number) {
        // do some magic!
        return new ResponseEntity<HudsonmodelQueue>(HttpStatus.OK);
    }

}
