/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech) (3.2.1-SNAPSHOT).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package org.openapitools.api;

import org.openapitools.model.ComputerSet;
import io.swagger.annotations.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import javax.validation.constraints.*;
import java.util.List;
import java.util.Map;
import java.util.Optional;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2019-04-10T13:22:06.378Z[GMT]")

@Validated
@Api(value = "computer", description = "the computer API")
public interface ComputerApi {

    default Optional<NativeWebRequest> getRequest() {
        return Optional.empty();
    }

    @ApiOperation(value = "", nickname = "getComputer", notes = "Retrieve computer details", response = ComputerSet.class, authorizations = {
        @Authorization(value = "jenkins_auth")
    }, tags={ "remoteAccess", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved computer details", response = ComputerSet.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    @RequestMapping(value = "/computer/api/json",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    default ResponseEntity<ComputerSet> getComputer(@NotNull @ApiParam(value = "Recursion depth in response model", required = true) @Valid @RequestParam(value = "depth", required = true) Integer depth) {
        getRequest().ifPresent(request -> {
            for (MediaType mediaType: MediaType.parseMediaTypes(request.getHeader("Accept"))) {
                if (mediaType.isCompatibleWith(MediaType.valueOf("application/json"))) {
                    ApiUtil.setExampleResponse(request, "application/json", "{  \"busyExecutors\" : 0,  \"totalExecutors\" : 1,  \"computer\" : [ {    \"idle\" : true,    \"displayName\" : \"displayName\",    \"jnlpAgent\" : true,    \"launchSupported\" : true,    \"icon\" : \"icon\",    \"iconClassName\" : \"iconClassName\",    \"offlineCause\" : \"offlineCause\",    \"temporarilyOffline\" : true,    \"numExecutors\" : 1,    \"offline\" : true,    \"executors\" : [ {      \"currentExecutable\" : {        \"queueId\" : 5,        \"displayName\" : \"displayName\",        \"keepLog\" : true,        \"description\" : \"description\",        \"fullDisplayName\" : \"fullDisplayName\",        \"estimatedDuration\" : 5,        \"url\" : \"url\",        \"building\" : true,        \"changeSet\" : {          \"kind\" : \"kind\",          \"_class\" : \"_class\"        },        \"duration\" : 1,        \"result\" : \"result\",        \"number\" : 6,        \"executor\" : \"executor\",        \"builtOn\" : \"builtOn\",        \"_class\" : \"_class\",        \"id\" : \"id\",        \"actions\" : [ {          \"causes\" : [ {            \"_class\" : \"_class\",            \"shortDescription\" : \"shortDescription\",            \"userName\" : \"userName\",            \"userId\" : \"userId\"          }, {            \"_class\" : \"_class\",            \"shortDescription\" : \"shortDescription\",            \"userName\" : \"userName\",            \"userId\" : \"userId\"          } ],          \"_class\" : \"_class\"        }, {          \"causes\" : [ {            \"_class\" : \"_class\",            \"shortDescription\" : \"shortDescription\",            \"userName\" : \"userName\",            \"userId\" : \"userId\"          }, {            \"_class\" : \"_class\",            \"shortDescription\" : \"shortDescription\",            \"userName\" : \"userName\",            \"userId\" : \"userId\"          } ],          \"_class\" : \"_class\"        } ],        \"timestamp\" : 2      },      \"number\" : 6,      \"idle\" : true,      \"likelyStuck\" : true,      \"progress\" : 1,      \"_class\" : \"_class\"    }, {      \"currentExecutable\" : {        \"queueId\" : 5,        \"displayName\" : \"displayName\",        \"keepLog\" : true,        \"description\" : \"description\",        \"fullDisplayName\" : \"fullDisplayName\",        \"estimatedDuration\" : 5,        \"url\" : \"url\",        \"building\" : true,        \"changeSet\" : {          \"kind\" : \"kind\",          \"_class\" : \"_class\"        },        \"duration\" : 1,        \"result\" : \"result\",        \"number\" : 6,        \"executor\" : \"executor\",        \"builtOn\" : \"builtOn\",        \"_class\" : \"_class\",        \"id\" : \"id\",        \"actions\" : [ {          \"causes\" : [ {            \"_class\" : \"_class\",            \"shortDescription\" : \"shortDescription\",            \"userName\" : \"userName\",            \"userId\" : \"userId\"          }, {            \"_class\" : \"_class\",            \"shortDescription\" : \"shortDescription\",            \"userName\" : \"userName\",            \"userId\" : \"userId\"          } ],          \"_class\" : \"_class\"        }, {          \"causes\" : [ {            \"_class\" : \"_class\",            \"shortDescription\" : \"shortDescription\",            \"userName\" : \"userName\",            \"userId\" : \"userId\"          }, {            \"_class\" : \"_class\",            \"shortDescription\" : \"shortDescription\",            \"userName\" : \"userName\",            \"userId\" : \"userId\"          } ],          \"_class\" : \"_class\"        } ],        \"timestamp\" : 2      },      \"number\" : 6,      \"idle\" : true,      \"likelyStuck\" : true,      \"progress\" : 1,      \"_class\" : \"_class\"    } ],    \"monitorData\" : {      \"hudson.node_monitors.SwapSpaceMonitor\" : {        \"totalSwapSpace\" : 7,        \"availableSwapSpace\" : 5,        \"_class\" : \"_class\",        \"availablePhysicalMemory\" : 5,        \"totalPhysicalMemory\" : 2      },      \"hudson.node_monitors.TemporarySpaceMonitor\" : {        \"path\" : \"path\",        \"size\" : 3,        \"_class\" : \"_class\",        \"timestamp\" : 9      },      \"hudson.node_monitors.DiskSpaceMonitor\" : {        \"path\" : \"path\",        \"size\" : 3,        \"_class\" : \"_class\",        \"timestamp\" : 9      },      \"hudson.node_monitors.ArchitectureMonitor\" : \"hudson.node_monitors.ArchitectureMonitor\",      \"_class\" : \"_class\",      \"hudson.node_monitors.ResponseTimeMonitor\" : {        \"average\" : 4,        \"_class\" : \"_class\",        \"timestamp\" : 2      },      \"hudson.node_monitors.ClockMonitor\" : {        \"diff\" : 7,        \"_class\" : \"_class\"      }    },    \"_class\" : \"_class\",    \"loadStatistics\" : {      \"_class\" : \"_class\"    },    \"manualLaunchAllowed\" : true,    \"offlineCauseReason\" : \"offlineCauseReason\"  }, {    \"idle\" : true,    \"displayName\" : \"displayName\",    \"jnlpAgent\" : true,    \"launchSupported\" : true,    \"icon\" : \"icon\",    \"iconClassName\" : \"iconClassName\",    \"offlineCause\" : \"offlineCause\",    \"temporarilyOffline\" : true,    \"numExecutors\" : 1,    \"offline\" : true,    \"executors\" : [ {      \"currentExecutable\" : {        \"queueId\" : 5,        \"displayName\" : \"displayName\",        \"keepLog\" : true,        \"description\" : \"description\",        \"fullDisplayName\" : \"fullDisplayName\",        \"estimatedDuration\" : 5,        \"url\" : \"url\",        \"building\" : true,        \"changeSet\" : {          \"kind\" : \"kind\",          \"_class\" : \"_class\"        },        \"duration\" : 1,        \"result\" : \"result\",        \"number\" : 6,        \"executor\" : \"executor\",        \"builtOn\" : \"builtOn\",        \"_class\" : \"_class\",        \"id\" : \"id\",        \"actions\" : [ {          \"causes\" : [ {            \"_class\" : \"_class\",            \"shortDescription\" : \"shortDescription\",            \"userName\" : \"userName\",            \"userId\" : \"userId\"          }, {            \"_class\" : \"_class\",            \"shortDescription\" : \"shortDescription\",            \"userName\" : \"userName\",            \"userId\" : \"userId\"          } ],          \"_class\" : \"_class\"        }, {          \"causes\" : [ {            \"_class\" : \"_class\",            \"shortDescription\" : \"shortDescription\",            \"userName\" : \"userName\",            \"userId\" : \"userId\"          }, {            \"_class\" : \"_class\",            \"shortDescription\" : \"shortDescription\",            \"userName\" : \"userName\",            \"userId\" : \"userId\"          } ],          \"_class\" : \"_class\"        } ],        \"timestamp\" : 2      },      \"number\" : 6,      \"idle\" : true,      \"likelyStuck\" : true,      \"progress\" : 1,      \"_class\" : \"_class\"    }, {      \"currentExecutable\" : {        \"queueId\" : 5,        \"displayName\" : \"displayName\",        \"keepLog\" : true,        \"description\" : \"description\",        \"fullDisplayName\" : \"fullDisplayName\",        \"estimatedDuration\" : 5,        \"url\" : \"url\",        \"building\" : true,        \"changeSet\" : {          \"kind\" : \"kind\",          \"_class\" : \"_class\"        },        \"duration\" : 1,        \"result\" : \"result\",        \"number\" : 6,        \"executor\" : \"executor\",        \"builtOn\" : \"builtOn\",        \"_class\" : \"_class\",        \"id\" : \"id\",        \"actions\" : [ {          \"causes\" : [ {            \"_class\" : \"_class\",            \"shortDescription\" : \"shortDescription\",            \"userName\" : \"userName\",            \"userId\" : \"userId\"          }, {            \"_class\" : \"_class\",            \"shortDescription\" : \"shortDescription\",            \"userName\" : \"userName\",            \"userId\" : \"userId\"          } ],          \"_class\" : \"_class\"        }, {          \"causes\" : [ {            \"_class\" : \"_class\",            \"shortDescription\" : \"shortDescription\",            \"userName\" : \"userName\",            \"userId\" : \"userId\"          }, {            \"_class\" : \"_class\",            \"shortDescription\" : \"shortDescription\",            \"userName\" : \"userName\",            \"userId\" : \"userId\"          } ],          \"_class\" : \"_class\"        } ],        \"timestamp\" : 2      },      \"number\" : 6,      \"idle\" : true,      \"likelyStuck\" : true,      \"progress\" : 1,      \"_class\" : \"_class\"    } ],    \"monitorData\" : {      \"hudson.node_monitors.SwapSpaceMonitor\" : {        \"totalSwapSpace\" : 7,        \"availableSwapSpace\" : 5,        \"_class\" : \"_class\",        \"availablePhysicalMemory\" : 5,        \"totalPhysicalMemory\" : 2      },      \"hudson.node_monitors.TemporarySpaceMonitor\" : {        \"path\" : \"path\",        \"size\" : 3,        \"_class\" : \"_class\",        \"timestamp\" : 9      },      \"hudson.node_monitors.DiskSpaceMonitor\" : {        \"path\" : \"path\",        \"size\" : 3,        \"_class\" : \"_class\",        \"timestamp\" : 9      },      \"hudson.node_monitors.ArchitectureMonitor\" : \"hudson.node_monitors.ArchitectureMonitor\",      \"_class\" : \"_class\",      \"hudson.node_monitors.ResponseTimeMonitor\" : {        \"average\" : 4,        \"_class\" : \"_class\",        \"timestamp\" : 2      },      \"hudson.node_monitors.ClockMonitor\" : {        \"diff\" : 7,        \"_class\" : \"_class\"      }    },    \"_class\" : \"_class\",    \"loadStatistics\" : {      \"_class\" : \"_class\"    },    \"manualLaunchAllowed\" : true,    \"offlineCauseReason\" : \"offlineCauseReason\"  } ],  \"displayName\" : \"displayName\",  \"_class\" : \"_class\"}");
                    break;
                }
            }
        });
        return new ResponseEntity<>(HttpStatus.NOT_IMPLEMENTED);

    }

}
