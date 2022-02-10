import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:openapi/model/computer_set.dart';
import 'package:openapi/model/free_style_project.dart';
import 'package:openapi/model/free_style_build.dart';
import 'package:openapi/model/hudson.dart';
import 'package:openapi/model/list_view.dart';
import 'package:openapi/model/queue.dart';

part 'remote_access_api.jretro.dart';

@GenApiClient()
class RemoteAccessApi extends ApiClient with _$RemoteAccessApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    RemoteAccessApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// 
    ///
    /// Retrieve computer details
    @GetReq(path: "/computer/api/json", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<ComputerSet> getComputer(
        
            @QueryParam("depth") int depth
        ) {
        return super.getComputer(
        
        depth

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve Jenkins details
    @GetReq(path: "/api/json", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<Hudson> getJenkins(
        ) {
        return super.getJenkins(

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve job details
    @GetReq(path: "/job/:name/api/json", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<FreeStyleProject> getJob(
            @PathParam("name") String name
        ) {
        return super.getJob(
        name

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve job configuration
    @GetReq(path: "/job/:name/config.xml", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<String> getJobConfig(
            @PathParam("name") String name
        ) {
        return super.getJobConfig(
        name

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve job&#39;s last build details
    @GetReq(path: "/job/:name/lastBuild/api/json", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<FreeStyleBuild> getJobLastBuild(
            @PathParam("name") String name
        ) {
        return super.getJobLastBuild(
        name

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve job&#39;s build progressive text output
    @GetReq(path: "/job/:name/:number/logText/progressiveText", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<void> getJobProgressiveText(
            @PathParam("name") String name, 
            @PathParam("number") String number
        ,
            @QueryParam("start") String start
        ) {
        return super.getJobProgressiveText(
        name, 
        number
        ,
        start

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve queue details
    @GetReq(path: "/queue/api/json", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<Queue> getQueue(
        ) {
        return super.getQueue(

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve queued item details
    @GetReq(path: "/queue/item/:number/api/json", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<Queue> getQueueItem(
            @PathParam("number") String number
        ) {
        return super.getQueueItem(
        number

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve view details
    @GetReq(path: "/view/:name/api/json", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<ListView> getView(
            @PathParam("name") String name
        ) {
        return super.getView(
        name

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve view configuration
    @GetReq(path: "/view/:name/config.xml", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<String> getViewConfig(
            @PathParam("name") String name
        ) {
        return super.getViewConfig(
        name

        ).timeout(timeout);
    }

    /// 
    ///
    /// Retrieve Jenkins headers
    @HeadReq(path: "/api/json", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<void> headJenkins(
        ) {
        return super.headJenkins(

        ).timeout(timeout);
    }

    /// 
    ///
    /// Create a new job using job configuration, or copied from an existing job
    @PostReq(path: "/createItem", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<void> postCreateItem(
        
            @Header("Jenkins-Crumb") String jenkinsCrumb, 
        
            @Header("Content-Type") String contentType
        ,
            @QueryParam("name") String name, 
        
            @QueryParam("from") String from, 
        
            @QueryParam("mode") String mode
            ,
             @AsJson() String body
        ) {
        return super.postCreateItem(
        
        jenkinsCrumb, 
        
        contentType
        ,
        name, 
        
        from, 
        
        mode

        ,
        body
        ).timeout(timeout);
    }

    /// 
    ///
    /// Create a new view using view configuration
    @PostReq(path: "/createView", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<void> postCreateView(
        
            @Header("Jenkins-Crumb") String jenkinsCrumb, 
        
            @Header("Content-Type") String contentType
        ,
            @QueryParam("name") String name
            ,
             @AsJson() String body
        ) {
        return super.postCreateView(
        
        jenkinsCrumb, 
        
        contentType
        ,
        name

        ,
        body
        ).timeout(timeout);
    }

    /// 
    ///
    /// Build a job
    @PostReq(path: "/job/:name/build", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<void> postJobBuild(
            @PathParam("name") String name
        ,
            @Header("Jenkins-Crumb") String jenkinsCrumb
        ,
            @QueryParam("json") String json, 
        
            @QueryParam("token") String token
        ) {
        return super.postJobBuild(
        name
        ,
        jenkinsCrumb
        ,
        json, 
        
        token

        ).timeout(timeout);
    }

    /// 
    ///
    /// Update job configuration
    @PostReq(path: "/job/:name/config.xml", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<void> postJobConfig(
            @PathParam("name") String name
        ,
            @Header("Jenkins-Crumb") String jenkinsCrumb
            ,
             @AsJson() String body
        ) {
        return super.postJobConfig(
        name
        ,
        jenkinsCrumb

        ,
        body
        ).timeout(timeout);
    }

    /// 
    ///
    /// Delete a job
    @PostReq(path: "/job/:name/doDelete", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<void> postJobDelete(
            @PathParam("name") String name
        ,
            @Header("Jenkins-Crumb") String jenkinsCrumb
        ) {
        return super.postJobDelete(
        name
        ,
        jenkinsCrumb

        ).timeout(timeout);
    }

    /// 
    ///
    /// Disable a job
    @PostReq(path: "/job/:name/disable", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<void> postJobDisable(
            @PathParam("name") String name
        ,
            @Header("Jenkins-Crumb") String jenkinsCrumb
        ) {
        return super.postJobDisable(
        name
        ,
        jenkinsCrumb

        ).timeout(timeout);
    }

    /// 
    ///
    /// Enable a job
    @PostReq(path: "/job/:name/enable", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<void> postJobEnable(
            @PathParam("name") String name
        ,
            @Header("Jenkins-Crumb") String jenkinsCrumb
        ) {
        return super.postJobEnable(
        name
        ,
        jenkinsCrumb

        ).timeout(timeout);
    }

    /// 
    ///
    /// Stop a job
    @PostReq(path: "/job/:name/lastBuild/stop", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<void> postJobLastBuildStop(
            @PathParam("name") String name
        ,
            @Header("Jenkins-Crumb") String jenkinsCrumb
        ) {
        return super.postJobLastBuildStop(
        name
        ,
        jenkinsCrumb

        ).timeout(timeout);
    }

    /// 
    ///
    /// Update view configuration
    @PostReq(path: "/view/:name/config.xml", metadata: {"auth": [ {"type": "http", "name": "jenkins_auth" }]})
    Future<void> postViewConfig(
            @PathParam("name") String name
        ,
            @Header("Jenkins-Crumb") String jenkinsCrumb
            ,
             @AsJson() String body
        ) {
        return super.postViewConfig(
        name
        ,
        jenkinsCrumb

        ,
        body
        ).timeout(timeout);
    }


}
