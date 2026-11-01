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
open TestHelper
open OpenAPI.RemoteAccessApiHandler
open OpenAPI.RemoteAccessApiHandlerParams

module RemoteAccessApiHandlerTestsHelper =

  ()

  ()

  ()

  ()

  ()

  ()

  ()

  ()

  ()

  ()

  ()


  let mutable PostCreateItemExamples = Map.empty
  let mutable PostCreateItemBody = ""

  PostCreateItemBody <- WebUtility.HtmlDecode ""
  PostCreateItemExamples <- PostCreateItemExamples.Add("application/xml", PostCreateItemBody)

  let getPostCreateItemExample mediaType =
    PostCreateItemExamples.[mediaType]
      |> getConverter mediaType

  let mutable PostCreateViewExamples = Map.empty
  let mutable PostCreateViewBody = ""

  PostCreateViewBody <- WebUtility.HtmlDecode ""
  PostCreateViewExamples <- PostCreateViewExamples.Add("application/xml", PostCreateViewBody)

  let getPostCreateViewExample mediaType =
    PostCreateViewExamples.[mediaType]
      |> getConverter mediaType
  ()


  let mutable PostJobConfigExamples = Map.empty
  let mutable PostJobConfigBody = ""

  PostJobConfigBody <- WebUtility.HtmlDecode ""
  PostJobConfigExamples <- PostJobConfigExamples.Add("application/xml", PostJobConfigBody)

  let getPostJobConfigExample mediaType =
    PostJobConfigExamples.[mediaType]
      |> getConverter mediaType
  ()

  ()

  ()

  ()


  let mutable PostViewConfigExamples = Map.empty
  let mutable PostViewConfigBody = ""

  PostViewConfigBody <- WebUtility.HtmlDecode ""
  PostViewConfigExamples <- PostViewConfigExamples.Add("application/xml", PostViewConfigBody)

  let getPostViewConfigExample mediaType =
    PostViewConfigExamples.[mediaType]
      |> getConverter mediaType
