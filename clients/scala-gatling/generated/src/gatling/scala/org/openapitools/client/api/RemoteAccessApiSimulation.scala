package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class RemoteAccessApiSimulation extends Simulation {

    def getCurrentDirectory = new File("").getAbsolutePath
    def userDataDirectory = getCurrentDirectory + "/src/gatling/resources/data"

    // basic test setup
    val configName = System.getProperty("testConfig", "baseline")
    val config = ConfigFactory.load(configName).withFallback(ConfigFactory.load("default"))
    val durationSeconds = config.getInt("performance.durationSeconds")
    val rampUpSeconds = config.getInt("performance.rampUpSeconds")
    val rampDownSeconds = config.getInt("performance.rampDownSeconds")
    val authentication = config.getString("performance.authorizationHeader")
    val acceptHeader = config.getString("performance.acceptType")
    val contentTypeHeader = config.getString("performance.contentType")
    val rateMultiplier = config.getDouble("performance.rateMultiplier")
    val instanceMultiplier = config.getDouble("performance.instanceMultiplier")

    // global assertion data
    val globalResponseTimeMinLTE = config.getInt("performance.global.assertions.responseTime.min.lte")
    val globalResponseTimeMinGTE = config.getInt("performance.global.assertions.responseTime.min.gte")
    val globalResponseTimeMaxLTE = config.getInt("performance.global.assertions.responseTime.max.lte")
    val globalResponseTimeMaxGTE = config.getInt("performance.global.assertions.responseTime.max.gte")
    val globalResponseTimeMeanLTE = config.getInt("performance.global.assertions.responseTime.mean.lte")
    val globalResponseTimeMeanGTE = config.getInt("performance.global.assertions.responseTime.mean.gte")
    val globalResponseTimeFailedRequestsPercentLTE = config.getDouble("performance.global.assertions.failedRequests.percent.lte")
    val globalResponseTimeFailedRequestsPercentGTE = config.getDouble("performance.global.assertions.failedRequests.percent.gte")
    val globalResponseTimeSuccessfulRequestsPercentLTE = config.getDouble("performance.global.assertions.successfulRequests.percent.lte")
    val globalResponseTimeSuccessfulRequestsPercentGTE = config.getDouble("performance.global.assertions.successfulRequests.percent.gte")

// Setup http protocol configuration
    val httpConf = http
        .baseURL("http://localhost")
        .doNotTrackHeader("1")
        .acceptLanguageHeader("en-US,en;q=0.5")
        .acceptEncodingHeader("gzip, deflate")
        .userAgentHeader("Mozilla/5.0 (Windows NT 5.1; rv:31.0) Gecko/20100101 Firefox/31.0")
        .acceptHeader(acceptHeader)
        .contentTypeHeader(contentTypeHeader)

    // set authorization header if it has been modified from config
    if(!authentication.equals("~MANUAL_ENTRY")){
        httpConf.authorizationHeader(authentication)
    }

    // Setup all the operations per second for the test to ultimately be generated from configs
    val getComputerPerSecond = config.getDouble("performance.operationsPerSecond.getComputer") * rateMultiplier * instanceMultiplier
    val getJenkinsPerSecond = config.getDouble("performance.operationsPerSecond.getJenkins") * rateMultiplier * instanceMultiplier
    val getJobPerSecond = config.getDouble("performance.operationsPerSecond.getJob") * rateMultiplier * instanceMultiplier
    val getJobConfigPerSecond = config.getDouble("performance.operationsPerSecond.getJobConfig") * rateMultiplier * instanceMultiplier
    val getJobLastBuildPerSecond = config.getDouble("performance.operationsPerSecond.getJobLastBuild") * rateMultiplier * instanceMultiplier
    val getJobProgressiveTextPerSecond = config.getDouble("performance.operationsPerSecond.getJobProgressiveText") * rateMultiplier * instanceMultiplier
    val getQueuePerSecond = config.getDouble("performance.operationsPerSecond.getQueue") * rateMultiplier * instanceMultiplier
    val getQueueItemPerSecond = config.getDouble("performance.operationsPerSecond.getQueueItem") * rateMultiplier * instanceMultiplier
    val getViewPerSecond = config.getDouble("performance.operationsPerSecond.getView") * rateMultiplier * instanceMultiplier
    val getViewConfigPerSecond = config.getDouble("performance.operationsPerSecond.getViewConfig") * rateMultiplier * instanceMultiplier
    val headJenkinsPerSecond = config.getDouble("performance.operationsPerSecond.headJenkins") * rateMultiplier * instanceMultiplier
    val postCreateItemPerSecond = config.getDouble("performance.operationsPerSecond.postCreateItem") * rateMultiplier * instanceMultiplier
    val postCreateViewPerSecond = config.getDouble("performance.operationsPerSecond.postCreateView") * rateMultiplier * instanceMultiplier
    val postJobBuildPerSecond = config.getDouble("performance.operationsPerSecond.postJobBuild") * rateMultiplier * instanceMultiplier
    val postJobConfigPerSecond = config.getDouble("performance.operationsPerSecond.postJobConfig") * rateMultiplier * instanceMultiplier
    val postJobDeletePerSecond = config.getDouble("performance.operationsPerSecond.postJobDelete") * rateMultiplier * instanceMultiplier
    val postJobDisablePerSecond = config.getDouble("performance.operationsPerSecond.postJobDisable") * rateMultiplier * instanceMultiplier
    val postJobEnablePerSecond = config.getDouble("performance.operationsPerSecond.postJobEnable") * rateMultiplier * instanceMultiplier
    val postJobLastBuildStopPerSecond = config.getDouble("performance.operationsPerSecond.postJobLastBuildStop") * rateMultiplier * instanceMultiplier
    val postViewConfigPerSecond = config.getDouble("performance.operationsPerSecond.postViewConfig") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val getComputerQUERYFeeder = csv(userDataDirectory + File.separator + "getComputer-queryParams.csv").random
    val getJobPATHFeeder = csv(userDataDirectory + File.separator + "getJob-pathParams.csv").random
    val getJobConfigPATHFeeder = csv(userDataDirectory + File.separator + "getJobConfig-pathParams.csv").random
    val getJobLastBuildPATHFeeder = csv(userDataDirectory + File.separator + "getJobLastBuild-pathParams.csv").random
    val getJobProgressiveTextQUERYFeeder = csv(userDataDirectory + File.separator + "getJobProgressiveText-queryParams.csv").random
    val getJobProgressiveTextPATHFeeder = csv(userDataDirectory + File.separator + "getJobProgressiveText-pathParams.csv").random
    val getQueueItemPATHFeeder = csv(userDataDirectory + File.separator + "getQueueItem-pathParams.csv").random
    val getViewPATHFeeder = csv(userDataDirectory + File.separator + "getView-pathParams.csv").random
    val getViewConfigPATHFeeder = csv(userDataDirectory + File.separator + "getViewConfig-pathParams.csv").random
    val postCreateItemQUERYFeeder = csv(userDataDirectory + File.separator + "postCreateItem-queryParams.csv").random
    val postCreateItemHEADERFeeder = csv(userDataDirectory + File.separator + "postCreateItem-headerParams.csv").random
    val postCreateViewQUERYFeeder = csv(userDataDirectory + File.separator + "postCreateView-queryParams.csv").random
    val postCreateViewHEADERFeeder = csv(userDataDirectory + File.separator + "postCreateView-headerParams.csv").random
    val postJobBuildQUERYFeeder = csv(userDataDirectory + File.separator + "postJobBuild-queryParams.csv").random
    val postJobBuildHEADERFeeder = csv(userDataDirectory + File.separator + "postJobBuild-headerParams.csv").random
    val postJobBuildPATHFeeder = csv(userDataDirectory + File.separator + "postJobBuild-pathParams.csv").random
    val postJobConfigHEADERFeeder = csv(userDataDirectory + File.separator + "postJobConfig-headerParams.csv").random
    val postJobConfigPATHFeeder = csv(userDataDirectory + File.separator + "postJobConfig-pathParams.csv").random
    val postJobDeleteHEADERFeeder = csv(userDataDirectory + File.separator + "postJobDelete-headerParams.csv").random
    val postJobDeletePATHFeeder = csv(userDataDirectory + File.separator + "postJobDelete-pathParams.csv").random
    val postJobDisableHEADERFeeder = csv(userDataDirectory + File.separator + "postJobDisable-headerParams.csv").random
    val postJobDisablePATHFeeder = csv(userDataDirectory + File.separator + "postJobDisable-pathParams.csv").random
    val postJobEnableHEADERFeeder = csv(userDataDirectory + File.separator + "postJobEnable-headerParams.csv").random
    val postJobEnablePATHFeeder = csv(userDataDirectory + File.separator + "postJobEnable-pathParams.csv").random
    val postJobLastBuildStopHEADERFeeder = csv(userDataDirectory + File.separator + "postJobLastBuildStop-headerParams.csv").random
    val postJobLastBuildStopPATHFeeder = csv(userDataDirectory + File.separator + "postJobLastBuildStop-pathParams.csv").random
    val postViewConfigHEADERFeeder = csv(userDataDirectory + File.separator + "postViewConfig-headerParams.csv").random
    val postViewConfigPATHFeeder = csv(userDataDirectory + File.separator + "postViewConfig-pathParams.csv").random

    // Setup all scenarios

    
    val scngetComputer = scenario("getComputerSimulation")
        .feed(getComputerQUERYFeeder)
        .exec(http("getComputer")
        .httpRequest("GET","/computer/api/json")
        .queryParam("depth","${depth}")
)

    // Run scngetComputer with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetComputer.inject(
        rampUsersPerSec(1) to(getComputerPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getComputerPerSecond) during(durationSeconds),
        rampUsersPerSec(getComputerPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetJenkins = scenario("getJenkinsSimulation")
        .exec(http("getJenkins")
        .httpRequest("GET","/api/json")
)

    // Run scngetJenkins with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetJenkins.inject(
        rampUsersPerSec(1) to(getJenkinsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getJenkinsPerSecond) during(durationSeconds),
        rampUsersPerSec(getJenkinsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetJob = scenario("getJobSimulation")
        .feed(getJobPATHFeeder)
        .exec(http("getJob")
        .httpRequest("GET","/job/${name}/api/json")
)

    // Run scngetJob with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetJob.inject(
        rampUsersPerSec(1) to(getJobPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getJobPerSecond) during(durationSeconds),
        rampUsersPerSec(getJobPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetJobConfig = scenario("getJobConfigSimulation")
        .feed(getJobConfigPATHFeeder)
        .exec(http("getJobConfig")
        .httpRequest("GET","/job/${name}/config.xml")
)

    // Run scngetJobConfig with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetJobConfig.inject(
        rampUsersPerSec(1) to(getJobConfigPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getJobConfigPerSecond) during(durationSeconds),
        rampUsersPerSec(getJobConfigPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetJobLastBuild = scenario("getJobLastBuildSimulation")
        .feed(getJobLastBuildPATHFeeder)
        .exec(http("getJobLastBuild")
        .httpRequest("GET","/job/${name}/lastBuild/api/json")
)

    // Run scngetJobLastBuild with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetJobLastBuild.inject(
        rampUsersPerSec(1) to(getJobLastBuildPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getJobLastBuildPerSecond) during(durationSeconds),
        rampUsersPerSec(getJobLastBuildPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetJobProgressiveText = scenario("getJobProgressiveTextSimulation")
        .feed(getJobProgressiveTextQUERYFeeder)
        .feed(getJobProgressiveTextPATHFeeder)
        .exec(http("getJobProgressiveText")
        .httpRequest("GET","/job/${name}/${number}/logText/progressiveText")
        .queryParam("start","${start}")
)

    // Run scngetJobProgressiveText with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetJobProgressiveText.inject(
        rampUsersPerSec(1) to(getJobProgressiveTextPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getJobProgressiveTextPerSecond) during(durationSeconds),
        rampUsersPerSec(getJobProgressiveTextPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetQueue = scenario("getQueueSimulation")
        .exec(http("getQueue")
        .httpRequest("GET","/queue/api/json")
)

    // Run scngetQueue with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetQueue.inject(
        rampUsersPerSec(1) to(getQueuePerSecond) during(rampUpSeconds),
        constantUsersPerSec(getQueuePerSecond) during(durationSeconds),
        rampUsersPerSec(getQueuePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetQueueItem = scenario("getQueueItemSimulation")
        .feed(getQueueItemPATHFeeder)
        .exec(http("getQueueItem")
        .httpRequest("GET","/queue/item/${number}/api/json")
)

    // Run scngetQueueItem with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetQueueItem.inject(
        rampUsersPerSec(1) to(getQueueItemPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getQueueItemPerSecond) during(durationSeconds),
        rampUsersPerSec(getQueueItemPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetView = scenario("getViewSimulation")
        .feed(getViewPATHFeeder)
        .exec(http("getView")
        .httpRequest("GET","/view/${name}/api/json")
)

    // Run scngetView with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetView.inject(
        rampUsersPerSec(1) to(getViewPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getViewPerSecond) during(durationSeconds),
        rampUsersPerSec(getViewPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetViewConfig = scenario("getViewConfigSimulation")
        .feed(getViewConfigPATHFeeder)
        .exec(http("getViewConfig")
        .httpRequest("GET","/view/${name}/config.xml")
)

    // Run scngetViewConfig with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetViewConfig.inject(
        rampUsersPerSec(1) to(getViewConfigPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getViewConfigPerSecond) during(durationSeconds),
        rampUsersPerSec(getViewConfigPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnheadJenkins = scenario("headJenkinsSimulation")
        .exec(http("headJenkins")
        .httpRequest("HEAD","/api/json")
)

    // Run scnheadJenkins with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnheadJenkins.inject(
        rampUsersPerSec(1) to(headJenkinsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(headJenkinsPerSecond) during(durationSeconds),
        rampUsersPerSec(headJenkinsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostCreateItem = scenario("postCreateItemSimulation")
        .feed(postCreateItemQUERYFeeder)
        .feed(postCreateItemHEADERFeeder)
        .exec(http("postCreateItem")
        .httpRequest("POST","/createItem")
        .queryParam("name","${name}")
        .queryParam("mode","${mode}")
        .queryParam("from","${from}")
        .header("Jenkins-Crumb","${Jenkins-Crumb}")
        .header("Content-Type","${Content-Type}")
)

    // Run scnpostCreateItem with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostCreateItem.inject(
        rampUsersPerSec(1) to(postCreateItemPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postCreateItemPerSecond) during(durationSeconds),
        rampUsersPerSec(postCreateItemPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostCreateView = scenario("postCreateViewSimulation")
        .feed(postCreateViewQUERYFeeder)
        .feed(postCreateViewHEADERFeeder)
        .exec(http("postCreateView")
        .httpRequest("POST","/createView")
        .queryParam("name","${name}")
        .header("Jenkins-Crumb","${Jenkins-Crumb}")
        .header("Content-Type","${Content-Type}")
)

    // Run scnpostCreateView with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostCreateView.inject(
        rampUsersPerSec(1) to(postCreateViewPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postCreateViewPerSecond) during(durationSeconds),
        rampUsersPerSec(postCreateViewPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostJobBuild = scenario("postJobBuildSimulation")
        .feed(postJobBuildQUERYFeeder)
        .feed(postJobBuildHEADERFeeder)
        .feed(postJobBuildPATHFeeder)
        .exec(http("postJobBuild")
        .httpRequest("POST","/job/${name}/build")
        .queryParam("json","${json}")
        .queryParam("token","${token}")
        .header("Jenkins-Crumb","${Jenkins-Crumb}")
)

    // Run scnpostJobBuild with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostJobBuild.inject(
        rampUsersPerSec(1) to(postJobBuildPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postJobBuildPerSecond) during(durationSeconds),
        rampUsersPerSec(postJobBuildPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostJobConfig = scenario("postJobConfigSimulation")
        .feed(postJobConfigHEADERFeeder)
        .feed(postJobConfigPATHFeeder)
        .exec(http("postJobConfig")
        .httpRequest("POST","/job/${name}/config.xml")
        .header("Jenkins-Crumb","${Jenkins-Crumb}")
)

    // Run scnpostJobConfig with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostJobConfig.inject(
        rampUsersPerSec(1) to(postJobConfigPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postJobConfigPerSecond) during(durationSeconds),
        rampUsersPerSec(postJobConfigPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostJobDelete = scenario("postJobDeleteSimulation")
        .feed(postJobDeleteHEADERFeeder)
        .feed(postJobDeletePATHFeeder)
        .exec(http("postJobDelete")
        .httpRequest("POST","/job/${name}/doDelete")
        .header("Jenkins-Crumb","${Jenkins-Crumb}")
)

    // Run scnpostJobDelete with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostJobDelete.inject(
        rampUsersPerSec(1) to(postJobDeletePerSecond) during(rampUpSeconds),
        constantUsersPerSec(postJobDeletePerSecond) during(durationSeconds),
        rampUsersPerSec(postJobDeletePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostJobDisable = scenario("postJobDisableSimulation")
        .feed(postJobDisableHEADERFeeder)
        .feed(postJobDisablePATHFeeder)
        .exec(http("postJobDisable")
        .httpRequest("POST","/job/${name}/disable")
        .header("Jenkins-Crumb","${Jenkins-Crumb}")
)

    // Run scnpostJobDisable with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostJobDisable.inject(
        rampUsersPerSec(1) to(postJobDisablePerSecond) during(rampUpSeconds),
        constantUsersPerSec(postJobDisablePerSecond) during(durationSeconds),
        rampUsersPerSec(postJobDisablePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostJobEnable = scenario("postJobEnableSimulation")
        .feed(postJobEnableHEADERFeeder)
        .feed(postJobEnablePATHFeeder)
        .exec(http("postJobEnable")
        .httpRequest("POST","/job/${name}/enable")
        .header("Jenkins-Crumb","${Jenkins-Crumb}")
)

    // Run scnpostJobEnable with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostJobEnable.inject(
        rampUsersPerSec(1) to(postJobEnablePerSecond) during(rampUpSeconds),
        constantUsersPerSec(postJobEnablePerSecond) during(durationSeconds),
        rampUsersPerSec(postJobEnablePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostJobLastBuildStop = scenario("postJobLastBuildStopSimulation")
        .feed(postJobLastBuildStopHEADERFeeder)
        .feed(postJobLastBuildStopPATHFeeder)
        .exec(http("postJobLastBuildStop")
        .httpRequest("POST","/job/${name}/lastBuild/stop")
        .header("Jenkins-Crumb","${Jenkins-Crumb}")
)

    // Run scnpostJobLastBuildStop with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostJobLastBuildStop.inject(
        rampUsersPerSec(1) to(postJobLastBuildStopPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postJobLastBuildStopPerSecond) during(durationSeconds),
        rampUsersPerSec(postJobLastBuildStopPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostViewConfig = scenario("postViewConfigSimulation")
        .feed(postViewConfigHEADERFeeder)
        .feed(postViewConfigPATHFeeder)
        .exec(http("postViewConfig")
        .httpRequest("POST","/view/${name}/config.xml")
        .header("Jenkins-Crumb","${Jenkins-Crumb}")
)

    // Run scnpostViewConfig with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostViewConfig.inject(
        rampUsersPerSec(1) to(postViewConfigPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postViewConfigPerSecond) during(durationSeconds),
        rampUsersPerSec(postViewConfigPerSecond) to(1) during(rampDownSeconds)
    )

    setUp(
        scenarioBuilders.toList
    ).protocols(httpConf).assertions(
        global.responseTime.min.lte(globalResponseTimeMinLTE),
        global.responseTime.min.gte(globalResponseTimeMinGTE),
        global.responseTime.max.lte(globalResponseTimeMaxLTE),
        global.responseTime.max.gte(globalResponseTimeMaxGTE),
        global.responseTime.mean.lte(globalResponseTimeMeanLTE),
        global.responseTime.mean.gte(globalResponseTimeMeanGTE),
        global.failedRequests.percent.lte(globalResponseTimeFailedRequestsPercentLTE),
        global.failedRequests.percent.gte(globalResponseTimeFailedRequestsPercentGTE),
        global.successfulRequests.percent.lte(globalResponseTimeSuccessfulRequestsPercentLTE),
        global.successfulRequests.percent.gte(globalResponseTimeSuccessfulRequestsPercentGTE)
    )
}
