package controllers;

import apimodels.GetMultibranchPipeline;
import apimodels.GetOrganisations;
import apimodels.GetPipelines;
import apimodels.IojenkinsblueoceanrestimplpipelineBranchImpl;
import apimodels.IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl;
import apimodels.IojenkinsblueoceanserviceembeddedrestPipelineImpl;
import apimodels.SwaggyjenkinsOrganisation;
import apimodels.SwaggyjenkinsPipeline;
import apimodels.SwaggyjenkinsUser;

import play.mvc.Controller;
import play.mvc.Result;
import play.mvc.Http;
import java.util.List;
import java.util.ArrayList;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.inject.Inject;
import java.io.IOException;
import swagger.SwaggerUtils;
import com.fasterxml.jackson.core.type.TypeReference;

import javax.validation.constraints.*;

import swagger.SwaggerUtils.ApiAction;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

public class BlueOceanApiController extends Controller {

    private final BlueOceanApiControllerImp imp;
    private final ObjectMapper mapper;

    @Inject
    private BlueOceanApiController(BlueOceanApiControllerImp imp) {
        this.imp = imp;
        mapper = new ObjectMapper();
    }


    @ApiAction
    public Result getAuthenticatedUser(String organisation) throws Exception {
        SwaggyjenkinsUser obj = imp.getAuthenticatedUser(organisation);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
    }

    @ApiAction
    public Result getClasses(String propertyClass) throws Exception {
        String obj = imp.getClasses(propertyClass);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
    }

    @ApiAction
    public Result getOrganisation(String organisation) throws Exception {
        SwaggyjenkinsOrganisation obj = imp.getOrganisation(organisation);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
    }

    @ApiAction
    public Result getOrganisations() throws Exception {
        GetOrganisations obj = imp.getOrganisations();
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
    }

    @ApiAction
    public Result getPipelineBranchByOrg(String organisation,String pipeline,String branch) throws Exception {
        IojenkinsblueoceanrestimplpipelineBranchImpl obj = imp.getPipelineBranchByOrg(organisation, pipeline, branch);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
    }

    @ApiAction
    public Result getPipelineBranchesByOrg(String organisation,String pipeline) throws Exception {
        GetMultibranchPipeline obj = imp.getPipelineBranchesByOrg(organisation, pipeline);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
    }

    @ApiAction
    public Result getPipelineByOrg(String organisation,String pipeline) throws Exception {
        SwaggyjenkinsPipeline obj = imp.getPipelineByOrg(organisation, pipeline);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
    }

    @ApiAction
    public Result getPipelineFolderByOrg(String organisation,String folder) throws Exception {
        IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl obj = imp.getPipelineFolderByOrg(organisation, folder);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
    }

    @ApiAction
    public Result getPipelineFolderByOrg_0(String organisation,String pipeline,String folder) throws Exception {
        IojenkinsblueoceanserviceembeddedrestPipelineImpl obj = imp.getPipelineFolderByOrg_0(organisation, pipeline, folder);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
    }

    @ApiAction
    public Result getPipelinesByOrg(String organisation) throws Exception {
        GetPipelines obj = imp.getPipelinesByOrg(organisation);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
    }

    @ApiAction
    public Result getUser(String organisation,String user) throws Exception {
        SwaggyjenkinsUser obj = imp.getUser(organisation, user);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
    }

    @ApiAction
    public Result getUsers(String organisation) throws Exception {
        SwaggyjenkinsUser obj = imp.getUsers(organisation);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
    }

    @ApiAction
    public Result search() throws Exception {
        String valueq = request().getQueryString("q");
        String q;

        q = (String)valueq;

        String obj = imp.search(q);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
    }

    @ApiAction
    public Result search_0() throws Exception {
        String valueq = request().getQueryString("q");
        String q;

        q = (String)valueq;

        String obj = imp.search_0(q);
        JsonNode result = mapper.valueToTree(obj);
        return ok(result);
        
    }
}
