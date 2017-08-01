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

import javax.validation.constraints.*;

public interface BlueOceanApiControllerImpInterface {
    SwaggyjenkinsUser getAuthenticatedUser(String organisation) throws Exception;

    String getClasses(String propertyClass) throws Exception;

    SwaggyjenkinsOrganisation getOrganisation(String organisation) throws Exception;

    GetOrganisations getOrganisations() throws Exception;

    IojenkinsblueoceanrestimplpipelineBranchImpl getPipelineBranchByOrg(String organisation, String pipeline, String branch) throws Exception;

    GetMultibranchPipeline getPipelineBranchesByOrg(String organisation, String pipeline) throws Exception;

    SwaggyjenkinsPipeline getPipelineByOrg(String organisation, String pipeline) throws Exception;

    IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl getPipelineFolderByOrg(String organisation, String folder) throws Exception;

    IojenkinsblueoceanserviceembeddedrestPipelineImpl getPipelineFolderByOrg_0(String organisation, String pipeline, String folder) throws Exception;

    GetPipelines getPipelinesByOrg(String organisation) throws Exception;

    SwaggyjenkinsUser getUser(String organisation, String user) throws Exception;

    SwaggyjenkinsUser getUsers(String organisation) throws Exception;

    String search( @NotNull String q) throws Exception;

    String search_0( @NotNull String q) throws Exception;

}
