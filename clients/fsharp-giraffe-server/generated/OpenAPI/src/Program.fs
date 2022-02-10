namespace OpenAPI

open System
open System.Net.Http
open System.Security.Claims
open System.Threading
open Microsoft.AspNetCore
open Microsoft.AspNetCore.Builder
open Microsoft.AspNetCore.Hosting
open Microsoft.AspNetCore.Http
open Microsoft.AspNetCore.Http.Features
open Microsoft.AspNetCore.Authentication
open Microsoft.AspNetCore.Authentication.Cookies
open Microsoft.Extensions.Configuration
open Microsoft.Extensions.Logging
open Microsoft.Extensions.DependencyInjection
open FSharp.Control.Tasks.V2.ContextInsensitive
open System.Diagnostics
open Giraffe.GiraffeViewEngine
open AspNet.Security.ApiKey.Providers

open BaseApiHandlerParams
open BlueOceanApiHandlerParams
open RemoteAccessApiHandlerParams
open Giraffe

module App =

  // ---------------------------------
  // Error handler
  // ---------------------------------

  let errorHandler (ex : Exception) (logger : ILogger) =
    logger.LogError(EventId(), ex, "An unhandled exception has occurred while executing the request.")
    clearResponse >=> setStatusCode 500 >=> text ex.Message

  // ---------------------------------
  // Web app
  // ---------------------------------

  let HttpGet = GET
  let HttpPost = POST
  let HttpPut = PUT
  let HttpDelete = DELETE

  let authFailure : HttpHandler =
    setStatusCode 401 >=> text "You must be authenticated to access this resource."

  let webApp =
    choose (CustomHandlers.handlers @ [
      HttpGet >=> route "/crumbIssuer/api/json" >=>  >=>  BaseApiHandler.GetCrumb;
      HttpDelete >=> routeBind<DeletePipelineQueueItemPathParams> "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}"  (fun x -> (fun x -> (fun x ->  >=>  BlueOceanApiHandler.DeletePipelineQueueItem x) x) x);
      HttpGet >=> routeBind<GetAuthenticatedUserPathParams> "/blue/rest/organizations/{organization}/user/"  (fun x ->  >=>  BlueOceanApiHandler.GetAuthenticatedUser x);
      HttpGet >=> routeBind<GetClassesPathParams> "/blue/rest/classes/{class}"  (fun x ->  >=>  BlueOceanApiHandler.GetClasses x);
      HttpGet >=> routeBind<GetJsonWebKeyPathParams> "/jwt-auth/jwks/{key}"  (fun x ->  BlueOceanApiHandler.GetJsonWebKey x);
      HttpGet >=> route "/jwt-auth/token" >=>  BlueOceanApiHandler.GetJsonWebToken;
      HttpGet >=> routeBind<GetOrganisationPathParams> "/blue/rest/organizations/{organization}"  (fun x ->  >=>  BlueOceanApiHandler.GetOrganisation x);
      HttpGet >=> route "/blue/rest/organizations/" >=>  >=>  BlueOceanApiHandler.GetOrganisations;
      HttpGet >=> routeBind<GetPipelinePathParams> "/blue/rest/organizations/{organization}/pipelines/{pipeline}"  (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetPipeline x) x);
      HttpGet >=> routeBind<GetPipelineActivitiesPathParams> "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities"  (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetPipelineActivities x) x);
      HttpGet >=> routeBind<GetPipelineBranchPathParams> "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/"  (fun x -> (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetPipelineBranch x) x) x);
      HttpGet >=> routeBind<GetPipelineBranchRunPathParams> "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}"  (fun x -> (fun x -> (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetPipelineBranchRun x) x) x) x);
      HttpGet >=> routeBind<GetPipelineBranchesPathParams> "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches"  (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetPipelineBranches x) x);
      HttpGet >=> routeBind<GetPipelineFolderPathParams> "/blue/rest/organizations/{organization}/pipelines/{folder}/"  (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetPipelineFolder x) x);
      HttpGet >=> routeBind<GetPipelineFolderPipelinePathParams> "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}"  (fun x -> (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetPipelineFolderPipeline x) x) x);
      HttpGet >=> routeBind<GetPipelineQueuePathParams> "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue"  (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetPipelineQueue x) x);
      HttpGet >=> routeBind<GetPipelineRunPathParams> "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}"  (fun x -> (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetPipelineRun x) x) x);
      HttpGet >=> routeBind<GetPipelineRunLogPathParams> "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log"  (fun x -> (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetPipelineRunLog x) x) x);
      HttpGet >=> routeBind<GetPipelineRunNodePathParams> "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}"  (fun x -> (fun x -> (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetPipelineRunNode x) x) x) x);
      HttpGet >=> routeBind<GetPipelineRunNodeStepPathParams> "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}"  (fun x -> (fun x -> (fun x -> (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetPipelineRunNodeStep x) x) x) x) x);
      HttpGet >=> routeBind<GetPipelineRunNodeStepLogPathParams> "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log"  (fun x -> (fun x -> (fun x -> (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetPipelineRunNodeStepLog x) x) x) x) x);
      HttpGet >=> routeBind<GetPipelineRunNodeStepsPathParams> "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps"  (fun x -> (fun x -> (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetPipelineRunNodeSteps x) x) x) x);
      HttpGet >=> routeBind<GetPipelineRunNodesPathParams> "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes"  (fun x -> (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetPipelineRunNodes x) x) x);
      HttpGet >=> routeBind<GetPipelineRunsPathParams> "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs"  (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetPipelineRuns x) x);
      HttpGet >=> routeBind<GetPipelinesPathParams> "/blue/rest/organizations/{organization}/pipelines/"  (fun x ->  >=>  BlueOceanApiHandler.GetPipelines x);
      HttpGet >=> routeBind<GetSCMPathParams> "/blue/rest/organizations/{organization}/scm/{scm}"  (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetSCM x) x);
      HttpGet >=> routeBind<GetSCMOrganisationRepositoriesPathParams> "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories"  (fun x -> (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetSCMOrganisationRepositories x) x) x);
      HttpGet >=> routeBind<GetSCMOrganisationRepositoryPathParams> "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}"  (fun x -> (fun x -> (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetSCMOrganisationRepository x) x) x) x);
      HttpGet >=> routeBind<GetSCMOrganisationsPathParams> "/blue/rest/organizations/{organization}/scm/{scm}/organizations"  (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetSCMOrganisations x) x);
      HttpGet >=> routeBind<GetUserPathParams> "/blue/rest/organizations/{organization}/users/{user}"  (fun x -> (fun x ->  >=>  BlueOceanApiHandler.GetUser x) x);
      HttpGet >=> routeBind<GetUserFavoritesPathParams> "/blue/rest/users/{user}/favorites"  (fun x ->  >=>  BlueOceanApiHandler.GetUserFavorites x);
      HttpGet >=> routeBind<GetUsersPathParams> "/blue/rest/organizations/{organization}/users/"  (fun x ->  >=>  BlueOceanApiHandler.GetUsers x);
      HttpPost >=> routeBind<PostPipelineRunPathParams> "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay"  (fun x -> (fun x -> (fun x ->  >=>  BlueOceanApiHandler.PostPipelineRun x) x) x);
      HttpPost >=> routeBind<PostPipelineRunsPathParams> "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs"  (fun x -> (fun x ->  >=>  BlueOceanApiHandler.PostPipelineRuns x) x);
      HttpPut >=> routeBind<PutPipelineFavoritePathParams> "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite"  (fun x -> (fun x ->  >=>  BlueOceanApiHandler.PutPipelineFavorite x) x);
      HttpPut >=> routeBind<PutPipelineRunPathParams> "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop"  (fun x -> (fun x -> (fun x ->  >=>  BlueOceanApiHandler.PutPipelineRun x) x) x);
      HttpGet >=> route "/blue/rest/search/" >=>  >=>  BlueOceanApiHandler.Search;
      HttpGet >=> route "/blue/rest/classes/" >=>  >=>  BlueOceanApiHandler.SearchClasses;
      HttpGet >=> route "/computer/api/json" >=>  >=>  RemoteAccessApiHandler.GetComputer;
      HttpGet >=> route "/api/json" >=>  >=>  RemoteAccessApiHandler.GetJenkins;
      HttpGet >=> routeBind<GetJobPathParams> "/job/{name}/api/json"  (fun x ->  >=>  RemoteAccessApiHandler.GetJob x);
      HttpGet >=> routeBind<GetJobConfigPathParams> "/job/{name}/config.xml"  (fun x ->  >=>  RemoteAccessApiHandler.GetJobConfig x);
      HttpGet >=> routeBind<GetJobLastBuildPathParams> "/job/{name}/lastBuild/api/json"  (fun x ->  >=>  RemoteAccessApiHandler.GetJobLastBuild x);
      HttpGet >=> routeBind<GetJobProgressiveTextPathParams> "/job/{name}/{number}/logText/progressiveText"  (fun x -> (fun x ->  >=>  RemoteAccessApiHandler.GetJobProgressiveText x) x);
      HttpGet >=> route "/queue/api/json" >=>  >=>  RemoteAccessApiHandler.GetQueue;
      HttpGet >=> routeBind<GetQueueItemPathParams> "/queue/item/{number}/api/json"  (fun x ->  >=>  RemoteAccessApiHandler.GetQueueItem x);
      HttpGet >=> routeBind<GetViewPathParams> "/view/{name}/api/json"  (fun x ->  >=>  RemoteAccessApiHandler.GetView x);
      HttpGet >=> routeBind<GetViewConfigPathParams> "/view/{name}/config.xml"  (fun x ->  >=>  RemoteAccessApiHandler.GetViewConfig x);
      HttpHead >=> route "/api/json" >=>  >=>  RemoteAccessApiHandler.HeadJenkins;
      HttpPost >=> route "/createItem" >=>  >=>  RemoteAccessApiHandler.PostCreateItem;
      HttpPost >=> route "/createView" >=>  >=>  RemoteAccessApiHandler.PostCreateView;
      HttpPost >=> routeBind<PostJobBuildPathParams> "/job/{name}/build"  (fun x ->  >=>  RemoteAccessApiHandler.PostJobBuild x);
      HttpPost >=> routeBind<PostJobConfigPathParams> "/job/{name}/config.xml"  (fun x ->  >=>  RemoteAccessApiHandler.PostJobConfig x);
      HttpPost >=> routeBind<PostJobDeletePathParams> "/job/{name}/doDelete"  (fun x ->  >=>  RemoteAccessApiHandler.PostJobDelete x);
      HttpPost >=> routeBind<PostJobDisablePathParams> "/job/{name}/disable"  (fun x ->  >=>  RemoteAccessApiHandler.PostJobDisable x);
      HttpPost >=> routeBind<PostJobEnablePathParams> "/job/{name}/enable"  (fun x ->  >=>  RemoteAccessApiHandler.PostJobEnable x);
      HttpPost >=> routeBind<PostJobLastBuildStopPathParams> "/job/{name}/lastBuild/stop"  (fun x ->  >=>  RemoteAccessApiHandler.PostJobLastBuildStop x);
      HttpPost >=> routeBind<PostViewConfigPathParams> "/view/{name}/config.xml"  (fun x ->  >=>  RemoteAccessApiHandler.PostViewConfig x);
      RequestErrors.notFound (text "Not Found")
    ])
  // ---------------------------------
  // Main
  // ---------------------------------

  let configureApp (app : IApplicationBuilder) =
    app.UseGiraffeErrorHandler(errorHandler)
      .UseStaticFiles()
      .UseAuthentication()
      .UseResponseCaching() |> ignore
    CustomHandlers.configureApp app |> ignore
    app.UseGiraffe webApp |> ignore


  let configureServices (services : IServiceCollection) =
    services
          .AddResponseCaching()
          .AddGiraffe()
          |> AuthSchemes.configureServices
          |> CustomHandlers.configureServices services
          |> ignore
    services.AddDataProtection() |> ignore

  let configureLogging (loggerBuilder : ILoggingBuilder) =
    loggerBuilder.AddFilter(fun lvl -> lvl.Equals LogLevel.Error)
                  .AddConsole()
                  .AddDebug() |> ignore

  [<EntryPoint>]
  let main _ =
    let builder = WebHost.CreateDefaultBuilder()
                    .Configure(Action<IApplicationBuilder> configureApp)
                    .ConfigureServices(configureServices)
                    .ConfigureLogging(configureLogging)
                    |> CustomHandlers.configureWebHost
    builder.Build()
            .Run()
    0