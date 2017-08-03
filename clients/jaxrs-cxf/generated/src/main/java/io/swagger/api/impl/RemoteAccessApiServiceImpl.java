package io.swagger.api.impl;

import io.swagger.api.*;
import io.swagger.model.ComputerSet;
import io.swagger.model.DefaultCrumbIssuer;
import io.swagger.model.FreeStyleBuild;
import io.swagger.model.FreeStyleProject;
import io.swagger.model.Hudson;
import io.swagger.model.ListView;
import io.swagger.model.Queue;

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

public class RemoteAccessApiServiceImpl implements RemoteAccessApi {
    public ComputerSet getComputer(Integer depth) {
        // TODO: Implement...
        
        return null;
    }
    
    public DefaultCrumbIssuer getCrumb() {
        // TODO: Implement...
        
        return null;
    }
    
    public Hudson getJenkins() {
        // TODO: Implement...
        
        return null;
    }
    
    public FreeStyleProject getJob(String name) {
        // TODO: Implement...
        
        return null;
    }
    
    public String getJobConfig(String name) {
        // TODO: Implement...
        
        return null;
    }
    
    public FreeStyleBuild getJobLastBuild(String name) {
        // TODO: Implement...
        
        return null;
    }
    
    public void getJobProgressiveText(String name, String number, String start) {
        // TODO: Implement...
        
        
    }
    
    public Queue getQueue() {
        // TODO: Implement...
        
        return null;
    }
    
    public Queue getQueueItem(String number) {
        // TODO: Implement...
        
        return null;
    }
    
    public ListView getView(String name) {
        // TODO: Implement...
        
        return null;
    }
    
    public String getViewConfig(String name) {
        // TODO: Implement...
        
        return null;
    }
    
    public void headJenkins() {
        // TODO: Implement...
        
        
    }
    
    public void postCreateItem(String name, String from, String mode, String body, String jenkinsCrumb, String contentType) {
        // TODO: Implement...
        
        
    }
    
    public void postCreateView(String name, String body, String jenkinsCrumb, String contentType) {
        // TODO: Implement...
        
        
    }
    
    public void postJobBuild(String name, String json, String token, String jenkinsCrumb) {
        // TODO: Implement...
        
        
    }
    
    public void postJobConfig(String name, String body, String jenkinsCrumb) {
        // TODO: Implement...
        
        
    }
    
    public void postJobDelete(String name, String jenkinsCrumb) {
        // TODO: Implement...
        
        
    }
    
    public void postJobDisable(String name, String jenkinsCrumb) {
        // TODO: Implement...
        
        
    }
    
    public void postJobEnable(String name, String jenkinsCrumb) {
        // TODO: Implement...
        
        
    }
    
    public void postJobLastBuildStop(String name, String jenkinsCrumb) {
        // TODO: Implement...
        
        
    }
    
    public void postViewConfig(String name, String body, String jenkinsCrumb) {
        // TODO: Implement...
        
        
    }
    
}

