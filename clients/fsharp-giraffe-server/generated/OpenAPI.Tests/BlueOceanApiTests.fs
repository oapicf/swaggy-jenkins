namespace OpenAPI.Tests

open System
open System.Net
open System.Net.Http
open System.IO
open Microsoft.AspNetCore.Builder
open Microsoft.AspNetCore.Hosting
open Microsoft.AspNetCore.TestHost
open Microsoft.Extensions.DependencyInjection
open FSharp.Control.Tasks.V2.ContextInsensitive
open Xunit
open System.Text
open Newtonsoft
open TestHelper
open BlueOceanApiHandlerTestsHelper
open OpenAPI.BlueOceanApiHandler
open OpenAPI.BlueOceanApiHandlerParams
open OpenAPI.Model.BranchImpl
open OpenAPI.Model.FavoriteImpl
open OpenAPI.Model.GithubOrganization
open OpenAPI.Model.GithubScm
open OpenAPI.Model.MultibranchPipeline
open OpenAPI.Model.Organisation
open OpenAPI.Model.Pipeline
open OpenAPI.Model.PipelineActivity
open OpenAPI.Model.PipelineFolderImpl
open OpenAPI.Model.PipelineImpl
open OpenAPI.Model.PipelineRun
open OpenAPI.Model.PipelineRunNode
open OpenAPI.Model.PipelineStepImpl
open OpenAPI.Model.QueueItemImpl
open OpenAPI.Model.User

module BlueOceanApiHandlerTests =

  // ---------------------------------
  // Tests
  // ---------------------------------

  [<Fact>]
  let ``DeletePipelineQueueItem -  returns 200 where Successfully deleted queue item`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("queue", "ADDME")

      HttpDelete client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``DeletePipelineQueueItem -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("queue", "ADDME")

      HttpDelete client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``DeletePipelineQueueItem -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("queue", "ADDME")

      HttpDelete client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetAuthenticatedUser -  returns 200 where Successfully retrieved authenticated user details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/user/".Replace("organization", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetAuthenticatedUser -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/user/".Replace("organization", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetAuthenticatedUser -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/user/".Replace("organization", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetClasses -  returns 200 where Successfully retrieved class names`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/classes/{class}".Replace("_class", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetClasses -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/classes/{class}".Replace("_class", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetClasses -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/classes/{class}".Replace("_class", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJsonWebKey -  returns 200 where Successfully retrieved JWT token`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/jwt-auth/jwks/{key}".Replace("key", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJsonWebKey -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/jwt-auth/jwks/{key}".Replace("key", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJsonWebKey -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/jwt-auth/jwks/{key}".Replace("key", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJsonWebToken -  returns 200 where Successfully retrieved JWT token`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/jwt-auth/token" + "?expiryTimeInMins=ADDME&maxExpiryTimeInMins=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJsonWebToken -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/jwt-auth/token" + "?expiryTimeInMins=ADDME&maxExpiryTimeInMins=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJsonWebToken -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/jwt-auth/token" + "?expiryTimeInMins=ADDME&maxExpiryTimeInMins=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetOrganisation -  returns 200 where Successfully retrieved pipeline details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}".Replace("organization", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetOrganisation -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}".Replace("organization", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetOrganisation -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}".Replace("organization", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetOrganisation -  returns 404 where Pipeline cannot be found on Jenkins instance`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}".Replace("organization", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(404))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetOrganisations -  returns 200 where Successfully retrieved pipelines details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetOrganisations -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetOrganisations -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipeline -  returns 200 where Successfully retrieved pipeline details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipeline -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipeline -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipeline -  returns 404 where Pipeline cannot be found on Jenkins instance`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(404))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineActivities -  returns 200 where Successfully retrieved all activities details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineActivities -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineActivities -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineBranch -  returns 200 where Successfully retrieved branch details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("branch", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineBranch -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("branch", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineBranch -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("branch", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineBranchRun -  returns 200 where Successfully retrieved run details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("branch", "ADDME").Replace("run", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineBranchRun -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("branch", "ADDME").Replace("run", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineBranchRun -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("branch", "ADDME").Replace("run", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineBranches -  returns 200 where Successfully retrieved all branches details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineBranches -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineBranches -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineFolder -  returns 200 where Successfully retrieved folder details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{folder}/".Replace("organization", "ADDME").Replace("folder", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineFolder -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{folder}/".Replace("organization", "ADDME").Replace("folder", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineFolder -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{folder}/".Replace("organization", "ADDME").Replace("folder", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineFolderPipeline -  returns 200 where Successfully retrieved pipeline details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("folder", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineFolderPipeline -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("folder", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineFolderPipeline -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("folder", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineQueue -  returns 200 where Successfully retrieved queue details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineQueue -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineQueue -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRun -  returns 200 where Successfully retrieved run details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRun -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRun -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRunLog -  returns 200 where Successfully retrieved pipeline run log`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME") + "?start=ADDME&download=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRunLog -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME") + "?start=ADDME&download=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRunLog -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME") + "?start=ADDME&download=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRunNode -  returns 200 where Successfully retrieved run node details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME").Replace("node", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRunNode -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME").Replace("node", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRunNode -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME").Replace("node", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRunNodeStep -  returns 200 where Successfully retrieved run node step details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME").Replace("node", "ADDME").Replace("step", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRunNodeStep -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME").Replace("node", "ADDME").Replace("step", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRunNodeStep -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME").Replace("node", "ADDME").Replace("step", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRunNodeStepLog -  returns 200 where Successfully retrieved pipeline run node step log`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME").Replace("node", "ADDME").Replace("step", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRunNodeStepLog -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME").Replace("node", "ADDME").Replace("step", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRunNodeStepLog -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME").Replace("node", "ADDME").Replace("step", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRunNodeSteps -  returns 200 where Successfully retrieved run node steps details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME").Replace("node", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRunNodeSteps -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME").Replace("node", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRunNodeSteps -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME").Replace("node", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRunNodes -  returns 200 where Successfully retrieved run nodes details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRunNodes -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRunNodes -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRuns -  returns 200 where Successfully retrieved runs details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRuns -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelineRuns -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelines -  returns 200 where Successfully retrieved pipelines details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/".Replace("organization", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelines -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/".Replace("organization", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetPipelines -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/".Replace("organization", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetSCM -  returns 200 where Successfully retrieved SCM details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/scm/{scm}".Replace("organization", "ADDME").Replace("scm", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetSCM -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/scm/{scm}".Replace("organization", "ADDME").Replace("scm", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetSCM -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/scm/{scm}".Replace("organization", "ADDME").Replace("scm", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetSCMOrganisationRepositories -  returns 200 where Successfully retrieved SCM organization repositories details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories".Replace("organization", "ADDME").Replace("scm", "ADDME").Replace("scmOrganisation", "ADDME") + "?credentialId=ADDME&pageSize=ADDME&pageNumber=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetSCMOrganisationRepositories -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories".Replace("organization", "ADDME").Replace("scm", "ADDME").Replace("scmOrganisation", "ADDME") + "?credentialId=ADDME&pageSize=ADDME&pageNumber=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetSCMOrganisationRepositories -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories".Replace("organization", "ADDME").Replace("scm", "ADDME").Replace("scmOrganisation", "ADDME") + "?credentialId=ADDME&pageSize=ADDME&pageNumber=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetSCMOrganisationRepository -  returns 200 where Successfully retrieved SCM organizations details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}".Replace("organization", "ADDME").Replace("scm", "ADDME").Replace("scmOrganisation", "ADDME").Replace("repository", "ADDME") + "?credentialId=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetSCMOrganisationRepository -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}".Replace("organization", "ADDME").Replace("scm", "ADDME").Replace("scmOrganisation", "ADDME").Replace("repository", "ADDME") + "?credentialId=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetSCMOrganisationRepository -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}".Replace("organization", "ADDME").Replace("scm", "ADDME").Replace("scmOrganisation", "ADDME").Replace("repository", "ADDME") + "?credentialId=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetSCMOrganisations -  returns 200 where Successfully retrieved SCM organizations details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations".Replace("organization", "ADDME").Replace("scm", "ADDME") + "?credentialId=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetSCMOrganisations -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations".Replace("organization", "ADDME").Replace("scm", "ADDME") + "?credentialId=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetSCMOrganisations -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/scm/{scm}/organizations".Replace("organization", "ADDME").Replace("scm", "ADDME") + "?credentialId=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetUser -  returns 200 where Successfully retrieved users details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/users/{user}".Replace("organization", "ADDME").Replace("user", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetUser -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/users/{user}".Replace("organization", "ADDME").Replace("user", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetUser -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/users/{user}".Replace("organization", "ADDME").Replace("user", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetUserFavorites -  returns 200 where Successfully retrieved users favorites details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/users/{user}/favorites".Replace("user", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetUserFavorites -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/users/{user}/favorites".Replace("user", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetUserFavorites -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/users/{user}/favorites".Replace("user", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetUsers -  returns 200 where Successfully retrieved users details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/users/".Replace("organization", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetUsers -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/users/".Replace("organization", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetUsers -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/users/".Replace("organization", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostPipelineRun -  returns 200 where Successfully replayed a pipeline run`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostPipelineRun -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostPipelineRun -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostPipelineRuns -  returns 200 where Successfully started a build`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostPipelineRuns -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostPipelineRuns -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PutPipelineFavorite -  returns 200 where Successfully favorited/unfavorited a pipeline`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPutPipelineFavoriteExample "application/json")
      // or pass a body of type bool
      let body = obj() :?> bool |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPut client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PutPipelineFavorite -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPutPipelineFavoriteExample "application/json")
      // or pass a body of type bool
      let body = obj() :?> bool |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPut client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PutPipelineFavorite -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite".Replace("organization", "ADDME").Replace("pipeline", "ADDME")

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPutPipelineFavoriteExample "application/json")
      // or pass a body of type bool
      let body = obj() :?> bool |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPut client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PutPipelineRun -  returns 200 where Successfully stopped a build`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME") + "?blocking=ADDME&timeOutInSecs=ADDME"

      HttpPut client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PutPipelineRun -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME") + "?blocking=ADDME&timeOutInSecs=ADDME"

      HttpPut client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PutPipelineRun -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop".Replace("organization", "ADDME").Replace("pipeline", "ADDME").Replace("run", "ADDME") + "?blocking=ADDME&timeOutInSecs=ADDME"

      HttpPut client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``Search -  returns 200 where Successfully retrieved search result`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/search/" + "?q=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``Search -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/search/" + "?q=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``Search -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/search/" + "?q=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``SearchClasses -  returns 200 where Successfully retrieved search result`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/classes/" + "?q=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``SearchClasses -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/classes/" + "?q=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``SearchClasses -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/blue/rest/classes/" + "?q=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

