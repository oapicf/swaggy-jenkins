package api

import org.openapitools.OpenApiExceptions
import javax.inject.{Inject, Singleton}
import play.api.libs.json._
import play.api.mvc._
import model.ComputerSet
import model.FreeStyleBuild
import model.FreeStyleProject
import model.Hudson
import model.ListView
import model.Queue

@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-10T09:53:15.007563Z[Etc/UTC]")
@Singleton
class RemoteAccessApiController @Inject()(cc: ControllerComponents, api: RemoteAccessApi) extends AbstractController(cc) {
  /**
    * GET /computer/api/json?depth=[value]
    */
  def getComputer(): Action[AnyContent] = Action { request =>
    def executeApi(): ComputerSet = {
      val depth = request.getQueryString("depth")
        .map(value => value.toInt)
        .getOrElse {
          throw new OpenApiExceptions.MissingRequiredParameterException("depth", "query string")
        }
      api.getComputer(depth)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /api/json
    */
  def getJenkins(): Action[AnyContent] = Action { request =>
    def executeApi(): Hudson = {
      api.getJenkins()
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /job/:name/api/json
    * @param name Name of the job
    */
  def getJob(name: String): Action[AnyContent] = Action { request =>
    def executeApi(): FreeStyleProject = {
      api.getJob(name)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /job/:name/config.xml
    * @param name Name of the job
    */
  def getJobConfig(name: String): Action[AnyContent] = Action { request =>
    def executeApi(): String = {
      api.getJobConfig(name)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /job/:name/lastBuild/api/json
    * @param name Name of the job
    */
  def getJobLastBuild(name: String): Action[AnyContent] = Action { request =>
    def executeApi(): FreeStyleBuild = {
      api.getJobLastBuild(name)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /job/:name/:number/logText/progressiveText?start=[value]
    * @param name Name of the job
    * @param number Build number
    */
  def getJobProgressiveText(name: String, number: String): Action[AnyContent] = Action { request =>
    def executeApi(): Unit = {
      val start = request.getQueryString("start")
        .getOrElse {
          throw new OpenApiExceptions.MissingRequiredParameterException("start", "query string")
        }
      api.getJobProgressiveText(name, number, start)
    }

    executeApi()
    Ok
  }

  /**
    * GET /queue/api/json
    */
  def getQueue(): Action[AnyContent] = Action { request =>
    def executeApi(): Queue = {
      api.getQueue()
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /queue/item/:number/api/json
    * @param number Queue number
    */
  def getQueueItem(number: String): Action[AnyContent] = Action { request =>
    def executeApi(): Queue = {
      api.getQueueItem(number)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /view/:name/api/json
    * @param name Name of the view
    */
  def getView(name: String): Action[AnyContent] = Action { request =>
    def executeApi(): ListView = {
      api.getView(name)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * GET /view/:name/config.xml
    * @param name Name of the view
    */
  def getViewConfig(name: String): Action[AnyContent] = Action { request =>
    def executeApi(): String = {
      api.getViewConfig(name)
    }

    val result = executeApi()
    val json = Json.toJson(result)
    Ok(json)
  }

  /**
    * HEAD /api/json
    */
  def headJenkins(): Action[AnyContent] = Action { request =>
    def executeApi(): Unit = {
      api.headJenkins()
    }

    executeApi()
    Ok
  }

  /**
    * POST /createItem?name=[value]&from=[value]&mode=[value]
    */
  def postCreateItem(): Action[AnyContent] = Action { request =>
    def executeApi(): Unit = {
      val body = request.body.asJson.map(_.as[String])
      val jenkinsCrumb = request.headers.get("Jenkins-Crumb")
        
      val contentType = request.headers.get("Content-Type")
        
      val name = request.getQueryString("name")
        .getOrElse {
          throw new OpenApiExceptions.MissingRequiredParameterException("name", "query string")
        }
      val from = request.getQueryString("from")
        
      val mode = request.getQueryString("mode")
        
      api.postCreateItem(name, from, mode, jenkinsCrumb, contentType, body)
    }

    executeApi()
    Ok
  }

  /**
    * POST /createView?name=[value]
    */
  def postCreateView(): Action[AnyContent] = Action { request =>
    def executeApi(): Unit = {
      val body = request.body.asJson.map(_.as[String])
      val jenkinsCrumb = request.headers.get("Jenkins-Crumb")
        
      val contentType = request.headers.get("Content-Type")
        
      val name = request.getQueryString("name")
        .getOrElse {
          throw new OpenApiExceptions.MissingRequiredParameterException("name", "query string")
        }
      api.postCreateView(name, jenkinsCrumb, contentType, body)
    }

    executeApi()
    Ok
  }

  /**
    * POST /job/:name/build?json=[value]&token=[value]
    * @param name Name of the job
    */
  def postJobBuild(name: String): Action[AnyContent] = Action { request =>
    def executeApi(): Unit = {
      val jenkinsCrumb = request.headers.get("Jenkins-Crumb")
        
      val json = request.getQueryString("json")
        .getOrElse {
          throw new OpenApiExceptions.MissingRequiredParameterException("json", "query string")
        }
      val token = request.getQueryString("token")
        
      api.postJobBuild(name, json, token, jenkinsCrumb)
    }

    executeApi()
    Ok
  }

  /**
    * POST /job/:name/config.xml
    * @param name Name of the job
    */
  def postJobConfig(name: String): Action[AnyContent] = Action { request =>
    def executeApi(): Unit = {
      val body = request.body.asJson.map(_.as[String]).getOrElse {
        throw new OpenApiExceptions.MissingRequiredParameterException("body", "body")
      }
      val jenkinsCrumb = request.headers.get("Jenkins-Crumb")
        
      api.postJobConfig(name, body, jenkinsCrumb)
    }

    executeApi()
    Ok
  }

  /**
    * POST /job/:name/doDelete
    * @param name Name of the job
    */
  def postJobDelete(name: String): Action[AnyContent] = Action { request =>
    def executeApi(): Unit = {
      val jenkinsCrumb = request.headers.get("Jenkins-Crumb")
        
      api.postJobDelete(name, jenkinsCrumb)
    }

    executeApi()
    Ok
  }

  /**
    * POST /job/:name/disable
    * @param name Name of the job
    */
  def postJobDisable(name: String): Action[AnyContent] = Action { request =>
    def executeApi(): Unit = {
      val jenkinsCrumb = request.headers.get("Jenkins-Crumb")
        
      api.postJobDisable(name, jenkinsCrumb)
    }

    executeApi()
    Ok
  }

  /**
    * POST /job/:name/enable
    * @param name Name of the job
    */
  def postJobEnable(name: String): Action[AnyContent] = Action { request =>
    def executeApi(): Unit = {
      val jenkinsCrumb = request.headers.get("Jenkins-Crumb")
        
      api.postJobEnable(name, jenkinsCrumb)
    }

    executeApi()
    Ok
  }

  /**
    * POST /job/:name/lastBuild/stop
    * @param name Name of the job
    */
  def postJobLastBuildStop(name: String): Action[AnyContent] = Action { request =>
    def executeApi(): Unit = {
      val jenkinsCrumb = request.headers.get("Jenkins-Crumb")
        
      api.postJobLastBuildStop(name, jenkinsCrumb)
    }

    executeApi()
    Ok
  }

  /**
    * POST /view/:name/config.xml
    * @param name Name of the view
    */
  def postViewConfig(name: String): Action[AnyContent] = Action { request =>
    def executeApi(): Unit = {
      val body = request.body.asJson.map(_.as[String]).getOrElse {
        throw new OpenApiExceptions.MissingRequiredParameterException("body", "body")
      }
      val jenkinsCrumb = request.headers.get("Jenkins-Crumb")
        
      api.postViewConfig(name, body, jenkinsCrumb)
    }

    executeApi()
    Ok
  }

  private def splitCollectionParam(paramValues: String, collectionFormat: String): List[String] = {
    val splitBy =
      collectionFormat match {
        case "csv" => ",+"
        case "tsv" => "\t+"
        case "ssv" => " +"
        case "pipes" => "|+"
      }

    paramValues.split(splitBy).toList
  }
}
