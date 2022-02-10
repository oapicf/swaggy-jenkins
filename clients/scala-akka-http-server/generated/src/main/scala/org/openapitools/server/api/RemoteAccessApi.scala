package org.openapitools.server.api

import akka.http.scaladsl.server.Directives._
import akka.http.scaladsl.server.Route
import akka.http.scaladsl.model.StatusCodes
import akka.http.scaladsl.marshalling.ToEntityMarshaller
import akka.http.scaladsl.unmarshalling.FromEntityUnmarshaller
import akka.http.scaladsl.unmarshalling.FromStringUnmarshaller
import org.openapitools.server.AkkaHttpHelper._
import org.openapitools.server.model.ComputerSet
import org.openapitools.server.model.FreeStyleBuild
import org.openapitools.server.model.FreeStyleProject
import org.openapitools.server.model.Hudson
import org.openapitools.server.model.ListView
import org.openapitools.server.model.Queue


class RemoteAccessApi(
    remoteAccessService: RemoteAccessApiService,
    remoteAccessMarshaller: RemoteAccessApiMarshaller
) {

  
  import remoteAccessMarshaller._

  lazy val route: Route =
    path("computer" / "api" / "json") { 
      get { 
        parameters("depth".as[Int]) { (depth) => 
            remoteAccessService.getComputer(depth = depth)
        }
      }
    } ~
    path("api" / "json") { 
      get {  
            remoteAccessService.getJenkins()
      }
    } ~
    path("job" / Segment / "api" / "json") { (name) => 
      get {  
            remoteAccessService.getJob(name = name)
      }
    } ~
    path("job" / Segment / "config.xml") { (name) => 
      get {  
            remoteAccessService.getJobConfig(name = name)
      }
    } ~
    path("job" / Segment / "lastBuild" / "api" / "json") { (name) => 
      get {  
            remoteAccessService.getJobLastBuild(name = name)
      }
    } ~
    path("job" / Segment / Segment / "logText" / "progressiveText") { (name, number) => 
      get { 
        parameters("start".as[String]) { (start) => 
            remoteAccessService.getJobProgressiveText(name = name, number = number, start = start)
        }
      }
    } ~
    path("queue" / "api" / "json") { 
      get {  
            remoteAccessService.getQueue()
      }
    } ~
    path("queue" / "item" / Segment / "api" / "json") { (number) => 
      get {  
            remoteAccessService.getQueueItem(number = number)
      }
    } ~
    path("view" / Segment / "api" / "json") { (name) => 
      get {  
            remoteAccessService.getView(name = name)
      }
    } ~
    path("view" / Segment / "config.xml") { (name) => 
      get {  
            remoteAccessService.getViewConfig(name = name)
      }
    } ~
    path("api" / "json") { 
      head {  
            remoteAccessService.headJenkins()
      }
    } ~
    path("createItem") { 
      post { 
        parameters("name".as[String], "from".as[String].?, "mode".as[String].?) { (name, from, mode) => 
          optionalHeaderValueByName("Jenkins-Crumb") { jenkinsCrumb => optionalHeaderValueByName("Content-Type") { contentType => 
            remoteAccessService.postCreateItem(name = name, from = from, mode = mode, jenkinsCrumb = jenkinsCrumb, contentType = contentType, body = body)
          }
        }
      }
    } ~
    path("createView") { 
      post { 
        parameters("name".as[String]) { (name) => 
          optionalHeaderValueByName("Jenkins-Crumb") { jenkinsCrumb => optionalHeaderValueByName("Content-Type") { contentType => 
            remoteAccessService.postCreateView(name = name, jenkinsCrumb = jenkinsCrumb, contentType = contentType, body = body)
          }
        }
      }
    } ~
    path("job" / Segment / "build") { (name) => 
      post { 
        parameters("json".as[String], "token".as[String].?) { (json, token) => 
          optionalHeaderValueByName("Jenkins-Crumb") { jenkinsCrumb => 
            remoteAccessService.postJobBuild(name = name, json = json, token = token, jenkinsCrumb = jenkinsCrumb)
          }
        }
      }
    } ~
    path("job" / Segment / "config.xml") { (name) => 
      post {  
          optionalHeaderValueByName("Jenkins-Crumb") { jenkinsCrumb => 
            remoteAccessService.postJobConfig(name = name, body = body, jenkinsCrumb = jenkinsCrumb)
          }
      }
    } ~
    path("job" / Segment / "doDelete") { (name) => 
      post {  
          optionalHeaderValueByName("Jenkins-Crumb") { jenkinsCrumb => 
            remoteAccessService.postJobDelete(name = name, jenkinsCrumb = jenkinsCrumb)
          }
      }
    } ~
    path("job" / Segment / "disable") { (name) => 
      post {  
          optionalHeaderValueByName("Jenkins-Crumb") { jenkinsCrumb => 
            remoteAccessService.postJobDisable(name = name, jenkinsCrumb = jenkinsCrumb)
          }
      }
    } ~
    path("job" / Segment / "enable") { (name) => 
      post {  
          optionalHeaderValueByName("Jenkins-Crumb") { jenkinsCrumb => 
            remoteAccessService.postJobEnable(name = name, jenkinsCrumb = jenkinsCrumb)
          }
      }
    } ~
    path("job" / Segment / "lastBuild" / "stop") { (name) => 
      post {  
          optionalHeaderValueByName("Jenkins-Crumb") { jenkinsCrumb => 
            remoteAccessService.postJobLastBuildStop(name = name, jenkinsCrumb = jenkinsCrumb)
          }
      }
    } ~
    path("view" / Segment / "config.xml") { (name) => 
      post {  
          optionalHeaderValueByName("Jenkins-Crumb") { jenkinsCrumb => 
            remoteAccessService.postViewConfig(name = name, body = body, jenkinsCrumb = jenkinsCrumb)
          }
      }
    }
}


trait RemoteAccessApiService {

  def getComputer200(responseComputerSet: ComputerSet)(implicit toEntityMarshallerComputerSet: ToEntityMarshaller[ComputerSet]): Route =
    complete((200, responseComputerSet))
  def getComputer401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getComputer403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved computer details, DataType: ComputerSet
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getComputer(depth: Int)
      (implicit toEntityMarshallerComputerSet: ToEntityMarshaller[ComputerSet]): Route

  def getJenkins200(responseHudson: Hudson)(implicit toEntityMarshallerHudson: ToEntityMarshaller[Hudson]): Route =
    complete((200, responseHudson))
  def getJenkins401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getJenkins403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved Jenkins details, DataType: Hudson
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getJenkins()
      (implicit toEntityMarshallerHudson: ToEntityMarshaller[Hudson]): Route

  def getJob200(responseFreeStyleProject: FreeStyleProject)(implicit toEntityMarshallerFreeStyleProject: ToEntityMarshaller[FreeStyleProject]): Route =
    complete((200, responseFreeStyleProject))
  def getJob401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getJob403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  def getJob404: Route =
    complete((404, "Job cannot be found on Jenkins instance"))
  /**
   * Code: 200, Message: Successfully retrieved job details, DataType: FreeStyleProject
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   * Code: 404, Message: Job cannot be found on Jenkins instance
   */
  def getJob(name: String)
      (implicit toEntityMarshallerFreeStyleProject: ToEntityMarshaller[FreeStyleProject]): Route

  def getJobConfig200(responseString: String)(implicit toEntityMarshallerString: ToEntityMarshaller[String]): Route =
    complete((200, responseString))
  def getJobConfig401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getJobConfig403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  def getJobConfig404: Route =
    complete((404, "Job cannot be found on Jenkins instance"))
  /**
   * Code: 200, Message: Successfully retrieved job configuration in config.xml format, DataType: String
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   * Code: 404, Message: Job cannot be found on Jenkins instance
   */
  def getJobConfig(name: String): Route

  def getJobLastBuild200(responseFreeStyleBuild: FreeStyleBuild)(implicit toEntityMarshallerFreeStyleBuild: ToEntityMarshaller[FreeStyleBuild]): Route =
    complete((200, responseFreeStyleBuild))
  def getJobLastBuild401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getJobLastBuild403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  def getJobLastBuild404: Route =
    complete((404, "Job cannot be found on Jenkins instance"))
  /**
   * Code: 200, Message: Successfully retrieved job&#39;s last build details, DataType: FreeStyleBuild
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   * Code: 404, Message: Job cannot be found on Jenkins instance
   */
  def getJobLastBuild(name: String)
      (implicit toEntityMarshallerFreeStyleBuild: ToEntityMarshaller[FreeStyleBuild]): Route

  def getJobProgressiveText200: Route =
    complete((200, "Successfully retrieved job&#39;s build progressive text output"))
  def getJobProgressiveText401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getJobProgressiveText403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  def getJobProgressiveText404: Route =
    complete((404, "Job cannot be found on Jenkins instance"))
  /**
   * Code: 200, Message: Successfully retrieved job&#39;s build progressive text output
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   * Code: 404, Message: Job cannot be found on Jenkins instance
   */
  def getJobProgressiveText(name: String, number: String, start: String): Route

  def getQueue200(responseQueue: Queue)(implicit toEntityMarshallerQueue: ToEntityMarshaller[Queue]): Route =
    complete((200, responseQueue))
  def getQueue401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getQueue403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved queue details, DataType: Queue
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getQueue()
      (implicit toEntityMarshallerQueue: ToEntityMarshaller[Queue]): Route

  def getQueueItem200(responseQueue: Queue)(implicit toEntityMarshallerQueue: ToEntityMarshaller[Queue]): Route =
    complete((200, responseQueue))
  def getQueueItem401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getQueueItem403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved queued item details, DataType: Queue
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def getQueueItem(number: String)
      (implicit toEntityMarshallerQueue: ToEntityMarshaller[Queue]): Route

  def getView200(responseListView: ListView)(implicit toEntityMarshallerListView: ToEntityMarshaller[ListView]): Route =
    complete((200, responseListView))
  def getView401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getView403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  def getView404: Route =
    complete((404, "View cannot be found on Jenkins instance"))
  /**
   * Code: 200, Message: Successfully retrieved view details, DataType: ListView
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   * Code: 404, Message: View cannot be found on Jenkins instance
   */
  def getView(name: String)
      (implicit toEntityMarshallerListView: ToEntityMarshaller[ListView]): Route

  def getViewConfig200(responseString: String)(implicit toEntityMarshallerString: ToEntityMarshaller[String]): Route =
    complete((200, responseString))
  def getViewConfig401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def getViewConfig403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  def getViewConfig404: Route =
    complete((404, "View cannot be found on Jenkins instance"))
  /**
   * Code: 200, Message: Successfully retrieved view configuration in config.xml format, DataType: String
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   * Code: 404, Message: View cannot be found on Jenkins instance
   */
  def getViewConfig(name: String): Route

  def headJenkins200: Route =
    complete((200, "Successfully retrieved Jenkins headers"))
  def headJenkins401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def headJenkins403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully retrieved Jenkins headers
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def headJenkins(): Route

  def postCreateItem200: Route =
    complete((200, "Successfully created a new job"))
  def postCreateItem400(responseString: String)(implicit toEntityMarshallerString: ToEntityMarshaller[String]): Route =
    complete((400, responseString))
  def postCreateItem401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def postCreateItem403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully created a new job
   * Code: 400, Message: An error has occurred - error message is embedded inside the HTML response, DataType: String
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def postCreateItem(name: String, from: Option[String], mode: Option[String], jenkinsCrumb: Option[String], contentType: Option[String], body: Option[String]): Route

  def postCreateView200: Route =
    complete((200, "Successfully created the view"))
  def postCreateView400(responseString: String)(implicit toEntityMarshallerString: ToEntityMarshaller[String]): Route =
    complete((400, responseString))
  def postCreateView401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def postCreateView403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  /**
   * Code: 200, Message: Successfully created the view
   * Code: 400, Message: An error has occurred - error message is embedded inside the HTML response, DataType: String
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   */
  def postCreateView(name: String, jenkinsCrumb: Option[String], contentType: Option[String], body: Option[String]): Route

  def postJobBuild200: Route =
    complete((200, "Successfully built the job (backward compatibility for older versions of Jenkins)"))
  def postJobBuild201: Route =
    complete((201, "Successfully built the job"))
  def postJobBuild401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def postJobBuild403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  def postJobBuild404: Route =
    complete((404, "Job cannot be found on Jenkins instance"))
  /**
   * Code: 200, Message: Successfully built the job (backward compatibility for older versions of Jenkins)
   * Code: 201, Message: Successfully built the job
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   * Code: 404, Message: Job cannot be found on Jenkins instance
   */
  def postJobBuild(name: String, json: String, token: Option[String], jenkinsCrumb: Option[String]): Route

  def postJobConfig200: Route =
    complete((200, "Successfully retrieved job configuration in config.xml format"))
  def postJobConfig400(responseString: String)(implicit toEntityMarshallerString: ToEntityMarshaller[String]): Route =
    complete((400, responseString))
  def postJobConfig401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def postJobConfig403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  def postJobConfig404: Route =
    complete((404, "Job cannot be found on Jenkins instance"))
  /**
   * Code: 200, Message: Successfully retrieved job configuration in config.xml format
   * Code: 400, Message: An error has occurred - error message is embedded inside the HTML response, DataType: String
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   * Code: 404, Message: Job cannot be found on Jenkins instance
   */
  def postJobConfig(name: String, body: String, jenkinsCrumb: Option[String]): Route

  def postJobDelete200: Route =
    complete((200, "Successfully deleted the job"))
  def postJobDelete401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def postJobDelete403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  def postJobDelete404: Route =
    complete((404, "Job cannot be found on Jenkins instance"))
  /**
   * Code: 200, Message: Successfully deleted the job
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   * Code: 404, Message: Job cannot be found on Jenkins instance
   */
  def postJobDelete(name: String, jenkinsCrumb: Option[String]): Route

  def postJobDisable200: Route =
    complete((200, "Successfully disabled the job"))
  def postJobDisable401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def postJobDisable403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  def postJobDisable404: Route =
    complete((404, "Job cannot be found on Jenkins instance"))
  /**
   * Code: 200, Message: Successfully disabled the job
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   * Code: 404, Message: Job cannot be found on Jenkins instance
   */
  def postJobDisable(name: String, jenkinsCrumb: Option[String]): Route

  def postJobEnable200: Route =
    complete((200, "Successfully enabled the job"))
  def postJobEnable401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def postJobEnable403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  def postJobEnable404: Route =
    complete((404, "Job cannot be found on Jenkins instance"))
  /**
   * Code: 200, Message: Successfully enabled the job
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   * Code: 404, Message: Job cannot be found on Jenkins instance
   */
  def postJobEnable(name: String, jenkinsCrumb: Option[String]): Route

  def postJobLastBuildStop200: Route =
    complete((200, "Successfully stopped the job"))
  def postJobLastBuildStop401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def postJobLastBuildStop403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  def postJobLastBuildStop404: Route =
    complete((404, "Job cannot be found on Jenkins instance"))
  /**
   * Code: 200, Message: Successfully stopped the job
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   * Code: 404, Message: Job cannot be found on Jenkins instance
   */
  def postJobLastBuildStop(name: String, jenkinsCrumb: Option[String]): Route

  def postViewConfig200: Route =
    complete((200, "Successfully updated view configuration"))
  def postViewConfig400(responseString: String)(implicit toEntityMarshallerString: ToEntityMarshaller[String]): Route =
    complete((400, responseString))
  def postViewConfig401: Route =
    complete((401, "Authentication failed - incorrect username and/or password"))
  def postViewConfig403: Route =
    complete((403, "Jenkins requires authentication - please set username and password"))
  def postViewConfig404: Route =
    complete((404, "View cannot be found on Jenkins instance"))
  /**
   * Code: 200, Message: Successfully updated view configuration
   * Code: 400, Message: An error has occurred - error message is embedded inside the HTML response, DataType: String
   * Code: 401, Message: Authentication failed - incorrect username and/or password
   * Code: 403, Message: Jenkins requires authentication - please set username and password
   * Code: 404, Message: View cannot be found on Jenkins instance
   */
  def postViewConfig(name: String, body: String, jenkinsCrumb: Option[String]): Route

}

trait RemoteAccessApiMarshaller {


  implicit def toEntityMarshallerFreeStyleProject: ToEntityMarshaller[FreeStyleProject]

  implicit def toEntityMarshallerQueue: ToEntityMarshaller[Queue]

  implicit def toEntityMarshallerFreeStyleBuild: ToEntityMarshaller[FreeStyleBuild]

  implicit def toEntityMarshallerListView: ToEntityMarshaller[ListView]

  implicit def toEntityMarshallerHudson: ToEntityMarshaller[Hudson]

  implicit def toEntityMarshallerComputerSet: ToEntityMarshaller[ComputerSet]

}

