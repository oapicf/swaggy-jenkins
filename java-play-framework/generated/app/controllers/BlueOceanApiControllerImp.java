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

import play.mvc.Http;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.io.FileInputStream;
import javax.validation.constraints.*;
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

public class BlueOceanApiControllerImp implements BlueOceanApiControllerImpInterface {
    @Override
    public SwaggyjenkinsUser getAuthenticatedUser(String organisation) throws Exception {
        //Do your magic!!!
        return new SwaggyjenkinsUser();
    }

    @Override
    public String getClasses(String propertyClass) throws Exception {
        //Do your magic!!!
        return new String();
    }

    @Override
    public SwaggyjenkinsOrganisation getOrganisation(String organisation) throws Exception {
        //Do your magic!!!
        return new SwaggyjenkinsOrganisation();
    }

    @Override
    public GetOrganisations getOrganisations() throws Exception {
        //Do your magic!!!
        return new GetOrganisations();
    }

    @Override
    public IojenkinsblueoceanrestimplpipelineBranchImpl getPipelineBranchByOrg(String organisation, String pipeline, String branch) throws Exception {
        //Do your magic!!!
        return new IojenkinsblueoceanrestimplpipelineBranchImpl();
    }

    @Override
    public GetMultibranchPipeline getPipelineBranchesByOrg(String organisation, String pipeline) throws Exception {
        //Do your magic!!!
        return new GetMultibranchPipeline();
    }

    @Override
    public SwaggyjenkinsPipeline getPipelineByOrg(String organisation, String pipeline) throws Exception {
        //Do your magic!!!
        return new SwaggyjenkinsPipeline();
    }

    @Override
    public IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl getPipelineFolderByOrg(String organisation, String folder) throws Exception {
        //Do your magic!!!
        return new IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl();
    }

    @Override
    public IojenkinsblueoceanserviceembeddedrestPipelineImpl getPipelineFolderByOrg_0(String organisation, String pipeline, String folder) throws Exception {
        //Do your magic!!!
        return new IojenkinsblueoceanserviceembeddedrestPipelineImpl();
    }

    @Override
    public GetPipelines getPipelinesByOrg(String organisation) throws Exception {
        //Do your magic!!!
        return new GetPipelines();
    }

    @Override
    public SwaggyjenkinsUser getUser(String organisation, String user) throws Exception {
        //Do your magic!!!
        return new SwaggyjenkinsUser();
    }

    @Override
    public SwaggyjenkinsUser getUsers(String organisation) throws Exception {
        //Do your magic!!!
        return new SwaggyjenkinsUser();
    }

    @Override
    public String search( @NotNull String q) throws Exception {
        //Do your magic!!!
        return new String();
    }

    @Override
    public String search_0( @NotNull String q) throws Exception {
        //Do your magic!!!
        return new String();
    }

}
