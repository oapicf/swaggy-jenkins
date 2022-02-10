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
open RemoteAccessApiHandlerTestsHelper
open OpenAPI.RemoteAccessApiHandler
open OpenAPI.RemoteAccessApiHandlerParams
open OpenAPI.Model.ComputerSet
open OpenAPI.Model.FreeStyleBuild
open OpenAPI.Model.FreeStyleProject
open OpenAPI.Model.Hudson
open OpenAPI.Model.ListView
open OpenAPI.Model.Queue

module RemoteAccessApiHandlerTests =

  // ---------------------------------
  // Tests
  // ---------------------------------

  [<Fact>]
  let ``GetComputer -  returns 200 where Successfully retrieved computer details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/computer/api/json" + "?depth=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetComputer -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/computer/api/json" + "?depth=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetComputer -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/computer/api/json" + "?depth=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJenkins -  returns 200 where Successfully retrieved Jenkins details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/api/json"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJenkins -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/api/json"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJenkins -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/api/json"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJob -  returns 200 where Successfully retrieved job details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/api/json".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJob -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/api/json".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJob -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/api/json".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJob -  returns 404 where Job cannot be found on Jenkins instance`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/api/json".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(404))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJobConfig -  returns 200 where Successfully retrieved job configuration in config.xml format`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/config.xml".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJobConfig -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/config.xml".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJobConfig -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/config.xml".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJobConfig -  returns 404 where Job cannot be found on Jenkins instance`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/config.xml".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(404))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJobLastBuild -  returns 200 where Successfully retrieved job&#39;s last build details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/lastBuild/api/json".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJobLastBuild -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/lastBuild/api/json".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJobLastBuild -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/lastBuild/api/json".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJobLastBuild -  returns 404 where Job cannot be found on Jenkins instance`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/lastBuild/api/json".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(404))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJobProgressiveText -  returns 200 where Successfully retrieved job&#39;s build progressive text output`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/{number}/logText/progressiveText".Replace("name", "ADDME").Replace("number", "ADDME") + "?start=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJobProgressiveText -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/{number}/logText/progressiveText".Replace("name", "ADDME").Replace("number", "ADDME") + "?start=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJobProgressiveText -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/{number}/logText/progressiveText".Replace("name", "ADDME").Replace("number", "ADDME") + "?start=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetJobProgressiveText -  returns 404 where Job cannot be found on Jenkins instance`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/{number}/logText/progressiveText".Replace("name", "ADDME").Replace("number", "ADDME") + "?start=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(404))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetQueue -  returns 200 where Successfully retrieved queue details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/queue/api/json"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetQueue -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/queue/api/json"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetQueue -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/queue/api/json"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetQueueItem -  returns 200 where Successfully retrieved queued item details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/queue/item/{number}/api/json".Replace("number", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetQueueItem -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/queue/item/{number}/api/json".Replace("number", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetQueueItem -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/queue/item/{number}/api/json".Replace("number", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetView -  returns 200 where Successfully retrieved view details`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/view/{name}/api/json".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetView -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/view/{name}/api/json".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetView -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/view/{name}/api/json".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetView -  returns 404 where View cannot be found on Jenkins instance`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/view/{name}/api/json".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(404))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetViewConfig -  returns 200 where Successfully retrieved view configuration in config.xml format`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/view/{name}/config.xml".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetViewConfig -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/view/{name}/config.xml".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetViewConfig -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/view/{name}/config.xml".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GetViewConfig -  returns 404 where View cannot be found on Jenkins instance`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/view/{name}/config.xml".Replace("name", "ADDME")

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(404))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``HeadJenkins -  returns 200 where Successfully retrieved Jenkins headers`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/api/json"

      HttpHead client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``HeadJenkins -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/api/json"

      HttpHead client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``HeadJenkins -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/api/json"

      HttpHead client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostCreateItem -  returns 200 where Successfully created a new job`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/createItem" + "?name=ADDME&from=ADDME&mode=ADDME"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPostCreateItemExample "application/json")
      // or pass a body of type string
      let body = obj() :?> string |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PostCreateItem -  returns 400 where An error has occurred - error message is embedded inside the HTML response`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/createItem" + "?name=ADDME&from=ADDME&mode=ADDME"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPostCreateItemExample "application/json")
      // or pass a body of type string
      let body = obj() :?> string |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(400))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PostCreateItem -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/createItem" + "?name=ADDME&from=ADDME&mode=ADDME"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPostCreateItemExample "application/json")
      // or pass a body of type string
      let body = obj() :?> string |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PostCreateItem -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/createItem" + "?name=ADDME&from=ADDME&mode=ADDME"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPostCreateItemExample "application/json")
      // or pass a body of type string
      let body = obj() :?> string |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PostCreateView -  returns 200 where Successfully created the view`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/createView" + "?name=ADDME"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPostCreateViewExample "application/json")
      // or pass a body of type string
      let body = obj() :?> string |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PostCreateView -  returns 400 where An error has occurred - error message is embedded inside the HTML response`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/createView" + "?name=ADDME"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPostCreateViewExample "application/json")
      // or pass a body of type string
      let body = obj() :?> string |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(400))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PostCreateView -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/createView" + "?name=ADDME"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPostCreateViewExample "application/json")
      // or pass a body of type string
      let body = obj() :?> string |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PostCreateView -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/createView" + "?name=ADDME"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPostCreateViewExample "application/json")
      // or pass a body of type string
      let body = obj() :?> string |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PostJobBuild -  returns 200 where Successfully built the job (backward compatibility for older versions of Jenkins)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/build".Replace("name", "ADDME") + "?json=ADDME&token=ADDME"

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobBuild -  returns 201 where Successfully built the job`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/build".Replace("name", "ADDME") + "?json=ADDME&token=ADDME"

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(201))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobBuild -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/build".Replace("name", "ADDME") + "?json=ADDME&token=ADDME"

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobBuild -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/build".Replace("name", "ADDME") + "?json=ADDME&token=ADDME"

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobBuild -  returns 404 where Job cannot be found on Jenkins instance`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/build".Replace("name", "ADDME") + "?json=ADDME&token=ADDME"

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(404))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobConfig -  returns 200 where Successfully retrieved job configuration in config.xml format`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/config.xml".Replace("name", "ADDME")

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPostJobConfigExample "application/json")
      // or pass a body of type string
      let body = obj() :?> string |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PostJobConfig -  returns 400 where An error has occurred - error message is embedded inside the HTML response`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/config.xml".Replace("name", "ADDME")

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPostJobConfigExample "application/json")
      // or pass a body of type string
      let body = obj() :?> string |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(400))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PostJobConfig -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/config.xml".Replace("name", "ADDME")

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPostJobConfigExample "application/json")
      // or pass a body of type string
      let body = obj() :?> string |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PostJobConfig -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/config.xml".Replace("name", "ADDME")

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPostJobConfigExample "application/json")
      // or pass a body of type string
      let body = obj() :?> string |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PostJobConfig -  returns 404 where Job cannot be found on Jenkins instance`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/config.xml".Replace("name", "ADDME")

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPostJobConfigExample "application/json")
      // or pass a body of type string
      let body = obj() :?> string |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(404))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PostJobDelete -  returns 200 where Successfully deleted the job`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/doDelete".Replace("name", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobDelete -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/doDelete".Replace("name", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobDelete -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/doDelete".Replace("name", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobDelete -  returns 404 where Job cannot be found on Jenkins instance`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/doDelete".Replace("name", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(404))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobDisable -  returns 200 where Successfully disabled the job`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/disable".Replace("name", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobDisable -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/disable".Replace("name", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobDisable -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/disable".Replace("name", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobDisable -  returns 404 where Job cannot be found on Jenkins instance`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/disable".Replace("name", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(404))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobEnable -  returns 200 where Successfully enabled the job`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/enable".Replace("name", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobEnable -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/enable".Replace("name", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobEnable -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/enable".Replace("name", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobEnable -  returns 404 where Job cannot be found on Jenkins instance`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/enable".Replace("name", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(404))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobLastBuildStop -  returns 200 where Successfully stopped the job`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/lastBuild/stop".Replace("name", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobLastBuildStop -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/lastBuild/stop".Replace("name", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobLastBuildStop -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/lastBuild/stop".Replace("name", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostJobLastBuildStop -  returns 404 where Job cannot be found on Jenkins instance`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/job/{name}/lastBuild/stop".Replace("name", "ADDME")

      HttpPost client path
        |> isStatus (enum<HttpStatusCode>(404))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``PostViewConfig -  returns 200 where Successfully updated view configuration`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/view/{name}/config.xml".Replace("name", "ADDME")

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPostViewConfigExample "application/json")
      // or pass a body of type string
      let body = obj() :?> string |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PostViewConfig -  returns 400 where An error has occurred - error message is embedded inside the HTML response`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/view/{name}/config.xml".Replace("name", "ADDME")

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPostViewConfigExample "application/json")
      // or pass a body of type string
      let body = obj() :?> string |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(400))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PostViewConfig -  returns 401 where Authentication failed - incorrect username and/or password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/view/{name}/config.xml".Replace("name", "ADDME")

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPostViewConfigExample "application/json")
      // or pass a body of type string
      let body = obj() :?> string |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(401))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PostViewConfig -  returns 403 where Jenkins requires authentication - please set username and password`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/view/{name}/config.xml".Replace("name", "ADDME")

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPostViewConfigExample "application/json")
      // or pass a body of type string
      let body = obj() :?> string |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(403))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``PostViewConfig -  returns 404 where View cannot be found on Jenkins instance`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/view/{name}/config.xml".Replace("name", "ADDME")

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getPostViewConfigExample "application/json")
      // or pass a body of type string
      let body = obj() :?> string |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(404))
        |> readText
        |> shouldEqual "TESTME"
      }

