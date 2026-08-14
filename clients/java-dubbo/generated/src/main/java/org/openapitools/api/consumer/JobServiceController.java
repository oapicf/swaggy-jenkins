package org.openapitools.api.consumer;

import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProject;
import org.openapitools.model.*;
import org.openapitools.api.interfaces.JobService;
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
@RequestMapping("/job")
public class JobServiceController {

    @DubboReference
    private JobService jobService;

    @RequestMapping(method = RequestMethod.GET, value = "/{name}/api/json")
    public FreeStyleProject getJob(
        @RequestParam(name = "name") String name
    ) {
        return jobService.getJob(name);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/{name}/config.xml")
    public String getJobConfig(
        @RequestParam(name = "name") String name
    ) {
        return jobService.getJobConfig(name);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/{name}/lastBuild/api/json")
    public FreeStyleBuild getJobLastBuild(
        @RequestParam(name = "name") String name
    ) {
        return jobService.getJobLastBuild(name);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/{name}/{number}/logText/progressiveText")
    public void getJobProgressiveText(
        @RequestParam(name = "name") String name,
        @RequestParam(name = "number") String number,
        @RequestParam(name = "start") String start
    ) {
        jobService.getJobProgressiveText(name, number, start);
    }

    @RequestMapping(method = RequestMethod.POST, value = "/{name}/build")
    public void postJobBuild(
        @RequestParam(name = "name") String name,
        @RequestParam(name = "json") String json,
        @RequestParam(name = "token") String token,
        @RequestParam(name = "jenkinsCrumb") String jenkinsCrumb
    ) {
        jobService.postJobBuild(name, json, token, jenkinsCrumb);
    }

    @RequestMapping(method = RequestMethod.POST, value = "/{name}/config.xml")
    public void postJobConfig(
        @RequestParam(name = "name") String name,
        @RequestParam(name = "body") String body,
        @RequestParam(name = "jenkinsCrumb") String jenkinsCrumb
    ) {
        jobService.postJobConfig(name, body, jenkinsCrumb);
    }

    @RequestMapping(method = RequestMethod.POST, value = "/{name}/doDelete")
    public void postJobDelete(
        @RequestParam(name = "name") String name,
        @RequestParam(name = "jenkinsCrumb") String jenkinsCrumb
    ) {
        jobService.postJobDelete(name, jenkinsCrumb);
    }

    @RequestMapping(method = RequestMethod.POST, value = "/{name}/disable")
    public void postJobDisable(
        @RequestParam(name = "name") String name,
        @RequestParam(name = "jenkinsCrumb") String jenkinsCrumb
    ) {
        jobService.postJobDisable(name, jenkinsCrumb);
    }

    @RequestMapping(method = RequestMethod.POST, value = "/{name}/enable")
    public void postJobEnable(
        @RequestParam(name = "name") String name,
        @RequestParam(name = "jenkinsCrumb") String jenkinsCrumb
    ) {
        jobService.postJobEnable(name, jenkinsCrumb);
    }

    @RequestMapping(method = RequestMethod.POST, value = "/{name}/lastBuild/stop")
    public void postJobLastBuildStop(
        @RequestParam(name = "name") String name,
        @RequestParam(name = "jenkinsCrumb") String jenkinsCrumb
    ) {
        jobService.postJobLastBuildStop(name, jenkinsCrumb);
    }
}
