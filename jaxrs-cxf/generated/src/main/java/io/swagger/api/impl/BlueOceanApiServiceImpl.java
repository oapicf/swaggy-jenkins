package io.swagger.api.impl;

import io.swagger.api.*;
import io.swagger.model.GetMultibranchPipeline;
import io.swagger.model.GetOrganisations;
import io.swagger.model.GetPipelines;
import io.swagger.model.IojenkinsblueoceanrestimplpipelineBranchImpl;
import io.swagger.model.IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl;
import io.swagger.model.IojenkinsblueoceanserviceembeddedrestPipelineImpl;
import io.swagger.model.SwaggyjenkinsOrganisation;
import io.swagger.model.SwaggyjenkinsPipeline;
import io.swagger.model.SwaggyjenkinsUser;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import javax.ws.rs.*;
import javax.ws.rs.core.Response;
import org.apache.cxf.jaxrs.model.wadl.Description;
import org.apache.cxf.jaxrs.model.wadl.DocTarget;

import org.apache.cxf.jaxrs.ext.multipart.*;

import io.swagger.annotations.Api;

public class BlueOceanApiServiceImpl implements BlueOceanApi {
    public SwaggyjenkinsUser getAuthenticatedUser(String organisation) {
        // TODO: Implement...
        
        return null;
    }
    
    public String getClasses(String propertyClass) {
        // TODO: Implement...
        
        return null;
    }
    
    public SwaggyjenkinsOrganisation getOrganisation(String organisation) {
        // TODO: Implement...
        
        return null;
    }
    
    public GetOrganisations getOrganisations() {
        // TODO: Implement...
        
        return null;
    }
    
    public IojenkinsblueoceanrestimplpipelineBranchImpl getPipelineBranchByOrg(String organisation, String pipeline, String branch) {
        // TODO: Implement...
        
        return null;
    }
    
    public GetMultibranchPipeline getPipelineBranchesByOrg(String organisation, String pipeline) {
        // TODO: Implement...
        
        return null;
    }
    
    public SwaggyjenkinsPipeline getPipelineByOrg(String organisation, String pipeline) {
        // TODO: Implement...
        
        return null;
    }
    
    public IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl getPipelineFolderByOrg(String organisation, String folder) {
        // TODO: Implement...
        
        return null;
    }
    
    public IojenkinsblueoceanserviceembeddedrestPipelineImpl getPipelineFolderByOrg_1(String organisation, String pipeline, String folder) {
        // TODO: Implement...
        
        return null;
    }
    
    public GetPipelines getPipelinesByOrg(String organisation) {
        // TODO: Implement...
        
        return null;
    }
    
    public SwaggyjenkinsUser getUser(String organisation, String user) {
        // TODO: Implement...
        
        return null;
    }
    
    public SwaggyjenkinsUser getUsers(String organisation) {
        // TODO: Implement...
        
        return null;
    }
    
    public String search(String q) {
        // TODO: Implement...
        
        return null;
    }
    
    public String search_2(String q) {
        // TODO: Implement...
        
        return null;
    }
    
}

