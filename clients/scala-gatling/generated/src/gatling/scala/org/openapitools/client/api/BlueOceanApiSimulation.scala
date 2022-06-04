package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class BlueOceanApiSimulation extends Simulation {

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
    val deletePipelineQueueItemPerSecond = config.getDouble("performance.operationsPerSecond.deletePipelineQueueItem") * rateMultiplier * instanceMultiplier
    val getAuthenticatedUserPerSecond = config.getDouble("performance.operationsPerSecond.getAuthenticatedUser") * rateMultiplier * instanceMultiplier
    val getClassesPerSecond = config.getDouble("performance.operationsPerSecond.getClasses") * rateMultiplier * instanceMultiplier
    val getJsonWebKeyPerSecond = config.getDouble("performance.operationsPerSecond.getJsonWebKey") * rateMultiplier * instanceMultiplier
    val getJsonWebTokenPerSecond = config.getDouble("performance.operationsPerSecond.getJsonWebToken") * rateMultiplier * instanceMultiplier
    val getOrganisationPerSecond = config.getDouble("performance.operationsPerSecond.getOrganisation") * rateMultiplier * instanceMultiplier
    val getOrganisationsPerSecond = config.getDouble("performance.operationsPerSecond.getOrganisations") * rateMultiplier * instanceMultiplier
    val getPipelinePerSecond = config.getDouble("performance.operationsPerSecond.getPipeline") * rateMultiplier * instanceMultiplier
    val getPipelineActivitiesPerSecond = config.getDouble("performance.operationsPerSecond.getPipelineActivities") * rateMultiplier * instanceMultiplier
    val getPipelineBranchPerSecond = config.getDouble("performance.operationsPerSecond.getPipelineBranch") * rateMultiplier * instanceMultiplier
    val getPipelineBranchRunPerSecond = config.getDouble("performance.operationsPerSecond.getPipelineBranchRun") * rateMultiplier * instanceMultiplier
    val getPipelineBranchesPerSecond = config.getDouble("performance.operationsPerSecond.getPipelineBranches") * rateMultiplier * instanceMultiplier
    val getPipelineFolderPerSecond = config.getDouble("performance.operationsPerSecond.getPipelineFolder") * rateMultiplier * instanceMultiplier
    val getPipelineFolderPipelinePerSecond = config.getDouble("performance.operationsPerSecond.getPipelineFolderPipeline") * rateMultiplier * instanceMultiplier
    val getPipelineQueuePerSecond = config.getDouble("performance.operationsPerSecond.getPipelineQueue") * rateMultiplier * instanceMultiplier
    val getPipelineRunPerSecond = config.getDouble("performance.operationsPerSecond.getPipelineRun") * rateMultiplier * instanceMultiplier
    val getPipelineRunLogPerSecond = config.getDouble("performance.operationsPerSecond.getPipelineRunLog") * rateMultiplier * instanceMultiplier
    val getPipelineRunNodePerSecond = config.getDouble("performance.operationsPerSecond.getPipelineRunNode") * rateMultiplier * instanceMultiplier
    val getPipelineRunNodeStepPerSecond = config.getDouble("performance.operationsPerSecond.getPipelineRunNodeStep") * rateMultiplier * instanceMultiplier
    val getPipelineRunNodeStepLogPerSecond = config.getDouble("performance.operationsPerSecond.getPipelineRunNodeStepLog") * rateMultiplier * instanceMultiplier
    val getPipelineRunNodeStepsPerSecond = config.getDouble("performance.operationsPerSecond.getPipelineRunNodeSteps") * rateMultiplier * instanceMultiplier
    val getPipelineRunNodesPerSecond = config.getDouble("performance.operationsPerSecond.getPipelineRunNodes") * rateMultiplier * instanceMultiplier
    val getPipelineRunsPerSecond = config.getDouble("performance.operationsPerSecond.getPipelineRuns") * rateMultiplier * instanceMultiplier
    val getPipelinesPerSecond = config.getDouble("performance.operationsPerSecond.getPipelines") * rateMultiplier * instanceMultiplier
    val getSCMPerSecond = config.getDouble("performance.operationsPerSecond.getSCM") * rateMultiplier * instanceMultiplier
    val getSCMOrganisationRepositoriesPerSecond = config.getDouble("performance.operationsPerSecond.getSCMOrganisationRepositories") * rateMultiplier * instanceMultiplier
    val getSCMOrganisationRepositoryPerSecond = config.getDouble("performance.operationsPerSecond.getSCMOrganisationRepository") * rateMultiplier * instanceMultiplier
    val getSCMOrganisationsPerSecond = config.getDouble("performance.operationsPerSecond.getSCMOrganisations") * rateMultiplier * instanceMultiplier
    val getUserPerSecond = config.getDouble("performance.operationsPerSecond.getUser") * rateMultiplier * instanceMultiplier
    val getUserFavoritesPerSecond = config.getDouble("performance.operationsPerSecond.getUserFavorites") * rateMultiplier * instanceMultiplier
    val getUsersPerSecond = config.getDouble("performance.operationsPerSecond.getUsers") * rateMultiplier * instanceMultiplier
    val postPipelineRunPerSecond = config.getDouble("performance.operationsPerSecond.postPipelineRun") * rateMultiplier * instanceMultiplier
    val postPipelineRunsPerSecond = config.getDouble("performance.operationsPerSecond.postPipelineRuns") * rateMultiplier * instanceMultiplier
    val putPipelineFavoritePerSecond = config.getDouble("performance.operationsPerSecond.putPipelineFavorite") * rateMultiplier * instanceMultiplier
    val putPipelineRunPerSecond = config.getDouble("performance.operationsPerSecond.putPipelineRun") * rateMultiplier * instanceMultiplier
    val searchPerSecond = config.getDouble("performance.operationsPerSecond.search") * rateMultiplier * instanceMultiplier
    val searchClassesPerSecond = config.getDouble("performance.operationsPerSecond.searchClasses") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val deletePipelineQueueItemPATHFeeder = csv(userDataDirectory + File.separator + "deletePipelineQueueItem-pathParams.csv").random
    val getAuthenticatedUserPATHFeeder = csv(userDataDirectory + File.separator + "getAuthenticatedUser-pathParams.csv").random
    val getClassesPATHFeeder = csv(userDataDirectory + File.separator + "getClasses-pathParams.csv").random
    val getJsonWebKeyPATHFeeder = csv(userDataDirectory + File.separator + "getJsonWebKey-pathParams.csv").random
    val getJsonWebTokenQUERYFeeder = csv(userDataDirectory + File.separator + "getJsonWebToken-queryParams.csv").random
    val getOrganisationPATHFeeder = csv(userDataDirectory + File.separator + "getOrganisation-pathParams.csv").random
    val getPipelinePATHFeeder = csv(userDataDirectory + File.separator + "getPipeline-pathParams.csv").random
    val getPipelineActivitiesPATHFeeder = csv(userDataDirectory + File.separator + "getPipelineActivities-pathParams.csv").random
    val getPipelineBranchPATHFeeder = csv(userDataDirectory + File.separator + "getPipelineBranch-pathParams.csv").random
    val getPipelineBranchRunPATHFeeder = csv(userDataDirectory + File.separator + "getPipelineBranchRun-pathParams.csv").random
    val getPipelineBranchesPATHFeeder = csv(userDataDirectory + File.separator + "getPipelineBranches-pathParams.csv").random
    val getPipelineFolderPATHFeeder = csv(userDataDirectory + File.separator + "getPipelineFolder-pathParams.csv").random
    val getPipelineFolderPipelinePATHFeeder = csv(userDataDirectory + File.separator + "getPipelineFolderPipeline-pathParams.csv").random
    val getPipelineQueuePATHFeeder = csv(userDataDirectory + File.separator + "getPipelineQueue-pathParams.csv").random
    val getPipelineRunPATHFeeder = csv(userDataDirectory + File.separator + "getPipelineRun-pathParams.csv").random
    val getPipelineRunLogQUERYFeeder = csv(userDataDirectory + File.separator + "getPipelineRunLog-queryParams.csv").random
    val getPipelineRunLogPATHFeeder = csv(userDataDirectory + File.separator + "getPipelineRunLog-pathParams.csv").random
    val getPipelineRunNodePATHFeeder = csv(userDataDirectory + File.separator + "getPipelineRunNode-pathParams.csv").random
    val getPipelineRunNodeStepPATHFeeder = csv(userDataDirectory + File.separator + "getPipelineRunNodeStep-pathParams.csv").random
    val getPipelineRunNodeStepLogPATHFeeder = csv(userDataDirectory + File.separator + "getPipelineRunNodeStepLog-pathParams.csv").random
    val getPipelineRunNodeStepsPATHFeeder = csv(userDataDirectory + File.separator + "getPipelineRunNodeSteps-pathParams.csv").random
    val getPipelineRunNodesPATHFeeder = csv(userDataDirectory + File.separator + "getPipelineRunNodes-pathParams.csv").random
    val getPipelineRunsPATHFeeder = csv(userDataDirectory + File.separator + "getPipelineRuns-pathParams.csv").random
    val getPipelinesPATHFeeder = csv(userDataDirectory + File.separator + "getPipelines-pathParams.csv").random
    val getSCMPATHFeeder = csv(userDataDirectory + File.separator + "getSCM-pathParams.csv").random
    val getSCMOrganisationRepositoriesQUERYFeeder = csv(userDataDirectory + File.separator + "getSCMOrganisationRepositories-queryParams.csv").random
    val getSCMOrganisationRepositoriesPATHFeeder = csv(userDataDirectory + File.separator + "getSCMOrganisationRepositories-pathParams.csv").random
    val getSCMOrganisationRepositoryQUERYFeeder = csv(userDataDirectory + File.separator + "getSCMOrganisationRepository-queryParams.csv").random
    val getSCMOrganisationRepositoryPATHFeeder = csv(userDataDirectory + File.separator + "getSCMOrganisationRepository-pathParams.csv").random
    val getSCMOrganisationsQUERYFeeder = csv(userDataDirectory + File.separator + "getSCMOrganisations-queryParams.csv").random
    val getSCMOrganisationsPATHFeeder = csv(userDataDirectory + File.separator + "getSCMOrganisations-pathParams.csv").random
    val getUserPATHFeeder = csv(userDataDirectory + File.separator + "getUser-pathParams.csv").random
    val getUserFavoritesPATHFeeder = csv(userDataDirectory + File.separator + "getUserFavorites-pathParams.csv").random
    val getUsersPATHFeeder = csv(userDataDirectory + File.separator + "getUsers-pathParams.csv").random
    val postPipelineRunPATHFeeder = csv(userDataDirectory + File.separator + "postPipelineRun-pathParams.csv").random
    val postPipelineRunsPATHFeeder = csv(userDataDirectory + File.separator + "postPipelineRuns-pathParams.csv").random
    val putPipelineFavoritePATHFeeder = csv(userDataDirectory + File.separator + "putPipelineFavorite-pathParams.csv").random
    val putPipelineRunQUERYFeeder = csv(userDataDirectory + File.separator + "putPipelineRun-queryParams.csv").random
    val putPipelineRunPATHFeeder = csv(userDataDirectory + File.separator + "putPipelineRun-pathParams.csv").random
    val searchQUERYFeeder = csv(userDataDirectory + File.separator + "search-queryParams.csv").random
    val searchClassesQUERYFeeder = csv(userDataDirectory + File.separator + "searchClasses-queryParams.csv").random

    // Setup all scenarios

    
    val scndeletePipelineQueueItem = scenario("deletePipelineQueueItemSimulation")
        .feed(deletePipelineQueueItemPATHFeeder)
        .exec(http("deletePipelineQueueItem")
        .httpRequest("DELETE","/blue/rest/organizations/${organization}/pipelines/${pipeline}/queue/${queue}")
)

    // Run scndeletePipelineQueueItem with warm up and reach a constant rate for entire duration
    scenarioBuilders += scndeletePipelineQueueItem.inject(
        rampUsersPerSec(1) to(deletePipelineQueueItemPerSecond) during(rampUpSeconds),
        constantUsersPerSec(deletePipelineQueueItemPerSecond) during(durationSeconds),
        rampUsersPerSec(deletePipelineQueueItemPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetAuthenticatedUser = scenario("getAuthenticatedUserSimulation")
        .feed(getAuthenticatedUserPATHFeeder)
        .exec(http("getAuthenticatedUser")
        .httpRequest("GET","/blue/rest/organizations/${organization}/user/")
)

    // Run scngetAuthenticatedUser with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetAuthenticatedUser.inject(
        rampUsersPerSec(1) to(getAuthenticatedUserPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getAuthenticatedUserPerSecond) during(durationSeconds),
        rampUsersPerSec(getAuthenticatedUserPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetClasses = scenario("getClassesSimulation")
        .feed(getClassesPATHFeeder)
        .exec(http("getClasses")
        .httpRequest("GET","/blue/rest/classes/${class}")
)

    // Run scngetClasses with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetClasses.inject(
        rampUsersPerSec(1) to(getClassesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getClassesPerSecond) during(durationSeconds),
        rampUsersPerSec(getClassesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetJsonWebKey = scenario("getJsonWebKeySimulation")
        .feed(getJsonWebKeyPATHFeeder)
        .exec(http("getJsonWebKey")
        .httpRequest("GET","/jwt-auth/jwks/${key}")
)

    // Run scngetJsonWebKey with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetJsonWebKey.inject(
        rampUsersPerSec(1) to(getJsonWebKeyPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getJsonWebKeyPerSecond) during(durationSeconds),
        rampUsersPerSec(getJsonWebKeyPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetJsonWebToken = scenario("getJsonWebTokenSimulation")
        .feed(getJsonWebTokenQUERYFeeder)
        .exec(http("getJsonWebToken")
        .httpRequest("GET","/jwt-auth/token")
        .queryParam("maxExpiryTimeInMins","${maxExpiryTimeInMins}")
        .queryParam("expiryTimeInMins","${expiryTimeInMins}")
)

    // Run scngetJsonWebToken with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetJsonWebToken.inject(
        rampUsersPerSec(1) to(getJsonWebTokenPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getJsonWebTokenPerSecond) during(durationSeconds),
        rampUsersPerSec(getJsonWebTokenPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetOrganisation = scenario("getOrganisationSimulation")
        .feed(getOrganisationPATHFeeder)
        .exec(http("getOrganisation")
        .httpRequest("GET","/blue/rest/organizations/${organization}")
)

    // Run scngetOrganisation with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetOrganisation.inject(
        rampUsersPerSec(1) to(getOrganisationPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getOrganisationPerSecond) during(durationSeconds),
        rampUsersPerSec(getOrganisationPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetOrganisations = scenario("getOrganisationsSimulation")
        .exec(http("getOrganisations")
        .httpRequest("GET","/blue/rest/organizations/")
)

    // Run scngetOrganisations with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetOrganisations.inject(
        rampUsersPerSec(1) to(getOrganisationsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getOrganisationsPerSecond) during(durationSeconds),
        rampUsersPerSec(getOrganisationsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetPipeline = scenario("getPipelineSimulation")
        .feed(getPipelinePATHFeeder)
        .exec(http("getPipeline")
        .httpRequest("GET","/blue/rest/organizations/${organization}/pipelines/${pipeline}")
)

    // Run scngetPipeline with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetPipeline.inject(
        rampUsersPerSec(1) to(getPipelinePerSecond) during(rampUpSeconds),
        constantUsersPerSec(getPipelinePerSecond) during(durationSeconds),
        rampUsersPerSec(getPipelinePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetPipelineActivities = scenario("getPipelineActivitiesSimulation")
        .feed(getPipelineActivitiesPATHFeeder)
        .exec(http("getPipelineActivities")
        .httpRequest("GET","/blue/rest/organizations/${organization}/pipelines/${pipeline}/activities")
)

    // Run scngetPipelineActivities with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetPipelineActivities.inject(
        rampUsersPerSec(1) to(getPipelineActivitiesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getPipelineActivitiesPerSecond) during(durationSeconds),
        rampUsersPerSec(getPipelineActivitiesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetPipelineBranch = scenario("getPipelineBranchSimulation")
        .feed(getPipelineBranchPATHFeeder)
        .exec(http("getPipelineBranch")
        .httpRequest("GET","/blue/rest/organizations/${organization}/pipelines/${pipeline}/branches/${branch}/")
)

    // Run scngetPipelineBranch with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetPipelineBranch.inject(
        rampUsersPerSec(1) to(getPipelineBranchPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getPipelineBranchPerSecond) during(durationSeconds),
        rampUsersPerSec(getPipelineBranchPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetPipelineBranchRun = scenario("getPipelineBranchRunSimulation")
        .feed(getPipelineBranchRunPATHFeeder)
        .exec(http("getPipelineBranchRun")
        .httpRequest("GET","/blue/rest/organizations/${organization}/pipelines/${pipeline}/branches/${branch}/runs/${run}")
)

    // Run scngetPipelineBranchRun with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetPipelineBranchRun.inject(
        rampUsersPerSec(1) to(getPipelineBranchRunPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getPipelineBranchRunPerSecond) during(durationSeconds),
        rampUsersPerSec(getPipelineBranchRunPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetPipelineBranches = scenario("getPipelineBranchesSimulation")
        .feed(getPipelineBranchesPATHFeeder)
        .exec(http("getPipelineBranches")
        .httpRequest("GET","/blue/rest/organizations/${organization}/pipelines/${pipeline}/branches")
)

    // Run scngetPipelineBranches with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetPipelineBranches.inject(
        rampUsersPerSec(1) to(getPipelineBranchesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getPipelineBranchesPerSecond) during(durationSeconds),
        rampUsersPerSec(getPipelineBranchesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetPipelineFolder = scenario("getPipelineFolderSimulation")
        .feed(getPipelineFolderPATHFeeder)
        .exec(http("getPipelineFolder")
        .httpRequest("GET","/blue/rest/organizations/${organization}/pipelines/${folder}/")
)

    // Run scngetPipelineFolder with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetPipelineFolder.inject(
        rampUsersPerSec(1) to(getPipelineFolderPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getPipelineFolderPerSecond) during(durationSeconds),
        rampUsersPerSec(getPipelineFolderPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetPipelineFolderPipeline = scenario("getPipelineFolderPipelineSimulation")
        .feed(getPipelineFolderPipelinePATHFeeder)
        .exec(http("getPipelineFolderPipeline")
        .httpRequest("GET","/blue/rest/organizations/${organization}/pipelines/${folder}/pipelines/${pipeline}")
)

    // Run scngetPipelineFolderPipeline with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetPipelineFolderPipeline.inject(
        rampUsersPerSec(1) to(getPipelineFolderPipelinePerSecond) during(rampUpSeconds),
        constantUsersPerSec(getPipelineFolderPipelinePerSecond) during(durationSeconds),
        rampUsersPerSec(getPipelineFolderPipelinePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetPipelineQueue = scenario("getPipelineQueueSimulation")
        .feed(getPipelineQueuePATHFeeder)
        .exec(http("getPipelineQueue")
        .httpRequest("GET","/blue/rest/organizations/${organization}/pipelines/${pipeline}/queue")
)

    // Run scngetPipelineQueue with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetPipelineQueue.inject(
        rampUsersPerSec(1) to(getPipelineQueuePerSecond) during(rampUpSeconds),
        constantUsersPerSec(getPipelineQueuePerSecond) during(durationSeconds),
        rampUsersPerSec(getPipelineQueuePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetPipelineRun = scenario("getPipelineRunSimulation")
        .feed(getPipelineRunPATHFeeder)
        .exec(http("getPipelineRun")
        .httpRequest("GET","/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs/${run}")
)

    // Run scngetPipelineRun with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetPipelineRun.inject(
        rampUsersPerSec(1) to(getPipelineRunPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getPipelineRunPerSecond) during(durationSeconds),
        rampUsersPerSec(getPipelineRunPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetPipelineRunLog = scenario("getPipelineRunLogSimulation")
        .feed(getPipelineRunLogQUERYFeeder)
        .feed(getPipelineRunLogPATHFeeder)
        .exec(http("getPipelineRunLog")
        .httpRequest("GET","/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs/${run}/log")
        .queryParam("download","${download}")
        .queryParam("start","${start}")
)

    // Run scngetPipelineRunLog with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetPipelineRunLog.inject(
        rampUsersPerSec(1) to(getPipelineRunLogPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getPipelineRunLogPerSecond) during(durationSeconds),
        rampUsersPerSec(getPipelineRunLogPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetPipelineRunNode = scenario("getPipelineRunNodeSimulation")
        .feed(getPipelineRunNodePATHFeeder)
        .exec(http("getPipelineRunNode")
        .httpRequest("GET","/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs/${run}/nodes/${node}")
)

    // Run scngetPipelineRunNode with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetPipelineRunNode.inject(
        rampUsersPerSec(1) to(getPipelineRunNodePerSecond) during(rampUpSeconds),
        constantUsersPerSec(getPipelineRunNodePerSecond) during(durationSeconds),
        rampUsersPerSec(getPipelineRunNodePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetPipelineRunNodeStep = scenario("getPipelineRunNodeStepSimulation")
        .feed(getPipelineRunNodeStepPATHFeeder)
        .exec(http("getPipelineRunNodeStep")
        .httpRequest("GET","/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs/${run}/nodes/${node}/steps/${step}")
)

    // Run scngetPipelineRunNodeStep with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetPipelineRunNodeStep.inject(
        rampUsersPerSec(1) to(getPipelineRunNodeStepPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getPipelineRunNodeStepPerSecond) during(durationSeconds),
        rampUsersPerSec(getPipelineRunNodeStepPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetPipelineRunNodeStepLog = scenario("getPipelineRunNodeStepLogSimulation")
        .feed(getPipelineRunNodeStepLogPATHFeeder)
        .exec(http("getPipelineRunNodeStepLog")
        .httpRequest("GET","/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs/${run}/nodes/${node}/steps/${step}/log")
)

    // Run scngetPipelineRunNodeStepLog with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetPipelineRunNodeStepLog.inject(
        rampUsersPerSec(1) to(getPipelineRunNodeStepLogPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getPipelineRunNodeStepLogPerSecond) during(durationSeconds),
        rampUsersPerSec(getPipelineRunNodeStepLogPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetPipelineRunNodeSteps = scenario("getPipelineRunNodeStepsSimulation")
        .feed(getPipelineRunNodeStepsPATHFeeder)
        .exec(http("getPipelineRunNodeSteps")
        .httpRequest("GET","/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs/${run}/nodes/${node}/steps")
)

    // Run scngetPipelineRunNodeSteps with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetPipelineRunNodeSteps.inject(
        rampUsersPerSec(1) to(getPipelineRunNodeStepsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getPipelineRunNodeStepsPerSecond) during(durationSeconds),
        rampUsersPerSec(getPipelineRunNodeStepsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetPipelineRunNodes = scenario("getPipelineRunNodesSimulation")
        .feed(getPipelineRunNodesPATHFeeder)
        .exec(http("getPipelineRunNodes")
        .httpRequest("GET","/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs/${run}/nodes")
)

    // Run scngetPipelineRunNodes with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetPipelineRunNodes.inject(
        rampUsersPerSec(1) to(getPipelineRunNodesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getPipelineRunNodesPerSecond) during(durationSeconds),
        rampUsersPerSec(getPipelineRunNodesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetPipelineRuns = scenario("getPipelineRunsSimulation")
        .feed(getPipelineRunsPATHFeeder)
        .exec(http("getPipelineRuns")
        .httpRequest("GET","/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs")
)

    // Run scngetPipelineRuns with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetPipelineRuns.inject(
        rampUsersPerSec(1) to(getPipelineRunsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getPipelineRunsPerSecond) during(durationSeconds),
        rampUsersPerSec(getPipelineRunsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetPipelines = scenario("getPipelinesSimulation")
        .feed(getPipelinesPATHFeeder)
        .exec(http("getPipelines")
        .httpRequest("GET","/blue/rest/organizations/${organization}/pipelines/")
)

    // Run scngetPipelines with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetPipelines.inject(
        rampUsersPerSec(1) to(getPipelinesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getPipelinesPerSecond) during(durationSeconds),
        rampUsersPerSec(getPipelinesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetSCM = scenario("getSCMSimulation")
        .feed(getSCMPATHFeeder)
        .exec(http("getSCM")
        .httpRequest("GET","/blue/rest/organizations/${organization}/scm/${scm}")
)

    // Run scngetSCM with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetSCM.inject(
        rampUsersPerSec(1) to(getSCMPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getSCMPerSecond) during(durationSeconds),
        rampUsersPerSec(getSCMPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetSCMOrganisationRepositories = scenario("getSCMOrganisationRepositoriesSimulation")
        .feed(getSCMOrganisationRepositoriesQUERYFeeder)
        .feed(getSCMOrganisationRepositoriesPATHFeeder)
        .exec(http("getSCMOrganisationRepositories")
        .httpRequest("GET","/blue/rest/organizations/${organization}/scm/${scm}/organizations/${scmOrganisation}/repositories")
        .queryParam("pageNumber","${pageNumber}")
        .queryParam("pageSize","${pageSize}")
        .queryParam("credentialId","${credentialId}")
)

    // Run scngetSCMOrganisationRepositories with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetSCMOrganisationRepositories.inject(
        rampUsersPerSec(1) to(getSCMOrganisationRepositoriesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getSCMOrganisationRepositoriesPerSecond) during(durationSeconds),
        rampUsersPerSec(getSCMOrganisationRepositoriesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetSCMOrganisationRepository = scenario("getSCMOrganisationRepositorySimulation")
        .feed(getSCMOrganisationRepositoryQUERYFeeder)
        .feed(getSCMOrganisationRepositoryPATHFeeder)
        .exec(http("getSCMOrganisationRepository")
        .httpRequest("GET","/blue/rest/organizations/${organization}/scm/${scm}/organizations/${scmOrganisation}/repositories/${repository}")
        .queryParam("credentialId","${credentialId}")
)

    // Run scngetSCMOrganisationRepository with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetSCMOrganisationRepository.inject(
        rampUsersPerSec(1) to(getSCMOrganisationRepositoryPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getSCMOrganisationRepositoryPerSecond) during(durationSeconds),
        rampUsersPerSec(getSCMOrganisationRepositoryPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetSCMOrganisations = scenario("getSCMOrganisationsSimulation")
        .feed(getSCMOrganisationsQUERYFeeder)
        .feed(getSCMOrganisationsPATHFeeder)
        .exec(http("getSCMOrganisations")
        .httpRequest("GET","/blue/rest/organizations/${organization}/scm/${scm}/organizations")
        .queryParam("credentialId","${credentialId}")
)

    // Run scngetSCMOrganisations with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetSCMOrganisations.inject(
        rampUsersPerSec(1) to(getSCMOrganisationsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getSCMOrganisationsPerSecond) during(durationSeconds),
        rampUsersPerSec(getSCMOrganisationsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetUser = scenario("getUserSimulation")
        .feed(getUserPATHFeeder)
        .exec(http("getUser")
        .httpRequest("GET","/blue/rest/organizations/${organization}/users/${user}")
)

    // Run scngetUser with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetUser.inject(
        rampUsersPerSec(1) to(getUserPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getUserPerSecond) during(durationSeconds),
        rampUsersPerSec(getUserPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetUserFavorites = scenario("getUserFavoritesSimulation")
        .feed(getUserFavoritesPATHFeeder)
        .exec(http("getUserFavorites")
        .httpRequest("GET","/blue/rest/users/${user}/favorites")
)

    // Run scngetUserFavorites with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetUserFavorites.inject(
        rampUsersPerSec(1) to(getUserFavoritesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getUserFavoritesPerSecond) during(durationSeconds),
        rampUsersPerSec(getUserFavoritesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngetUsers = scenario("getUsersSimulation")
        .feed(getUsersPATHFeeder)
        .exec(http("getUsers")
        .httpRequest("GET","/blue/rest/organizations/${organization}/users/")
)

    // Run scngetUsers with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngetUsers.inject(
        rampUsersPerSec(1) to(getUsersPerSecond) during(rampUpSeconds),
        constantUsersPerSec(getUsersPerSecond) during(durationSeconds),
        rampUsersPerSec(getUsersPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostPipelineRun = scenario("postPipelineRunSimulation")
        .feed(postPipelineRunPATHFeeder)
        .exec(http("postPipelineRun")
        .httpRequest("POST","/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs/${run}/replay")
)

    // Run scnpostPipelineRun with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostPipelineRun.inject(
        rampUsersPerSec(1) to(postPipelineRunPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postPipelineRunPerSecond) during(durationSeconds),
        rampUsersPerSec(postPipelineRunPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnpostPipelineRuns = scenario("postPipelineRunsSimulation")
        .feed(postPipelineRunsPATHFeeder)
        .exec(http("postPipelineRuns")
        .httpRequest("POST","/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs")
)

    // Run scnpostPipelineRuns with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnpostPipelineRuns.inject(
        rampUsersPerSec(1) to(postPipelineRunsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(postPipelineRunsPerSecond) during(durationSeconds),
        rampUsersPerSec(postPipelineRunsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnputPipelineFavorite = scenario("putPipelineFavoriteSimulation")
        .feed(putPipelineFavoritePATHFeeder)
        .exec(http("putPipelineFavorite")
        .httpRequest("PUT","/blue/rest/organizations/${organization}/pipelines/${pipeline}/favorite")
)

    // Run scnputPipelineFavorite with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnputPipelineFavorite.inject(
        rampUsersPerSec(1) to(putPipelineFavoritePerSecond) during(rampUpSeconds),
        constantUsersPerSec(putPipelineFavoritePerSecond) during(durationSeconds),
        rampUsersPerSec(putPipelineFavoritePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnputPipelineRun = scenario("putPipelineRunSimulation")
        .feed(putPipelineRunQUERYFeeder)
        .feed(putPipelineRunPATHFeeder)
        .exec(http("putPipelineRun")
        .httpRequest("PUT","/blue/rest/organizations/${organization}/pipelines/${pipeline}/runs/${run}/stop")
        .queryParam("timeOutInSecs","${timeOutInSecs}")
        .queryParam("blocking","${blocking}")
)

    // Run scnputPipelineRun with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnputPipelineRun.inject(
        rampUsersPerSec(1) to(putPipelineRunPerSecond) during(rampUpSeconds),
        constantUsersPerSec(putPipelineRunPerSecond) during(durationSeconds),
        rampUsersPerSec(putPipelineRunPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnsearch = scenario("searchSimulation")
        .feed(searchQUERYFeeder)
        .exec(http("search")
        .httpRequest("GET","/blue/rest/search/")
        .queryParam("q","${q}")
)

    // Run scnsearch with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnsearch.inject(
        rampUsersPerSec(1) to(searchPerSecond) during(rampUpSeconds),
        constantUsersPerSec(searchPerSecond) during(durationSeconds),
        rampUsersPerSec(searchPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnsearchClasses = scenario("searchClassesSimulation")
        .feed(searchClassesQUERYFeeder)
        .exec(http("searchClasses")
        .httpRequest("GET","/blue/rest/classes/")
        .queryParam("q","${q}")
)

    // Run scnsearchClasses with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnsearchClasses.inject(
        rampUsersPerSec(1) to(searchClassesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(searchClassesPerSecond) during(durationSeconds),
        rampUsersPerSec(searchClassesPerSecond) to(1) during(rampDownSeconds)
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
