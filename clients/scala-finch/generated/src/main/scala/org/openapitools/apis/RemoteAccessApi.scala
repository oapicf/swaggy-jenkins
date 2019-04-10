package org.openapitools.apis

import java.io._
import org.openapitools._
import org.openapitools.models._
import org.openapitools.models.ComputerSet
import org.openapitools.models.FreeStyleBuild
import org.openapitools.models.FreeStyleProject
import org.openapitools.models.Hudson
import org.openapitools.models.ListView
import org.openapitools.models.Queue
import io.finch.circe._
import io.circe.generic.semiauto._
import com.twitter.concurrent.AsyncStream
import com.twitter.finagle.Service
import com.twitter.finagle.Http
import com.twitter.finagle.http.{Request, Response}
import com.twitter.finagle.http.exp.Multipart.{FileUpload, InMemoryFileUpload, OnDiskFileUpload}
import com.twitter.util.Future
import com.twitter.io.Buf
import io.finch._, items._
import java.io.File
import java.time._

object RemoteAccessApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        getComputer(da) :+:
        getJenkins(da) :+:
        getJob(da) :+:
        getJobConfig(da) :+:
        getJobLastBuild(da) :+:
        getJobProgressiveText(da) :+:
        getQueue(da) :+:
        getQueueItem(da) :+:
        getView(da) :+:
        getViewConfig(da) :+:
        headJenkins(da) :+:
        postCreateItem(da) :+:
        postCreateView(da) :+:
        postJobBuild(da) :+:
        postJobConfig(da) :+:
        postJobDelete(da) :+:
        postJobDisable(da) :+:
        postJobEnable(da) :+:
        postJobLastBuildStop(da) :+:
        postViewConfig(da)


    private def checkError(e: CommonError) = e match {
      case InvalidInput(_) => BadRequest(e)
      case MissingIdentifier(_) => BadRequest(e)
      case RecordNotFound(_) => NotFound(e)
      case _ => InternalServerError(e)
    }

    implicit class StringOps(s: String) {

      import java.time.format.DateTimeFormatter

      lazy val localformatter: DateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd")
      lazy val datetimeformatter: DateTimeFormatter =
      DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSZ")

      def toLocalDateTime: LocalDateTime = LocalDateTime.parse(s,localformatter)
      def toZonedDateTime: ZonedDateTime = ZonedDateTime.parse(s, datetimeformatter)

    }

        /**
        * 
        * @return An endpoint representing a ComputerSet
        */
        private def getComputer(da: DataAccessor): Endpoint[ComputerSet] =
        get("computer" :: "api" :: "json" :: param("depth").map(_.toInt)) { (depth: Int) =>
          da.RemoteAccess_getComputer(depth) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Hudson
        */
        private def getJenkins(da: DataAccessor): Endpoint[Hudson] =
        get("api" :: "json") { () =>
          da.RemoteAccess_getJenkins() match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a FreeStyleProject
        */
        private def getJob(da: DataAccessor): Endpoint[FreeStyleProject] =
        get("job" :: string :: "api" :: "json") { (name: String) =>
          da.RemoteAccess_getJob(name) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def getJobConfig(da: DataAccessor): Endpoint[String] =
        get("job" :: string :: "config.xml") { (name: String) =>
          da.RemoteAccess_getJobConfig(name) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a FreeStyleBuild
        */
        private def getJobLastBuild(da: DataAccessor): Endpoint[FreeStyleBuild] =
        get("job" :: string :: "lastBuild" :: "api" :: "json") { (name: String) =>
          da.RemoteAccess_getJobLastBuild(name) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Unit
        */
        private def getJobProgressiveText(da: DataAccessor): Endpoint[Unit] =
        get("job" :: string :: string :: "logText" :: "progressiveText" :: param("start")) { (name: String, number: String, start: String) =>
          da.RemoteAccess_getJobProgressiveText(name, number, start) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Queue
        */
        private def getQueue(da: DataAccessor): Endpoint[Queue] =
        get("queue" :: "api" :: "json") { () =>
          da.RemoteAccess_getQueue() match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Queue
        */
        private def getQueueItem(da: DataAccessor): Endpoint[Queue] =
        get("queue" :: "item" :: string :: "api" :: "json") { (number: String) =>
          da.RemoteAccess_getQueueItem(number) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a ListView
        */
        private def getView(da: DataAccessor): Endpoint[ListView] =
        get("view" :: string :: "api" :: "json") { (name: String) =>
          da.RemoteAccess_getView(name) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a String
        */
        private def getViewConfig(da: DataAccessor): Endpoint[String] =
        get("view" :: string :: "config.xml") { (name: String) =>
          da.RemoteAccess_getViewConfig(name) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Unit
        */
        private def headJenkins(da: DataAccessor): Endpoint[Unit] =
        head("api" :: "json") { () =>
          da.RemoteAccess_headJenkins() match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Unit
        */
        private def postCreateItem(da: DataAccessor): Endpoint[Unit] =
        post("createItem" :: param("name") :: paramOption("from") :: paramOption("mode") :: headerOption("Jenkins-Crumb") :: headerOption("Content-Type") :: jsonBody[String]) { (name: String, from: Option[String], mode: Option[String], jenkinsCrumb: Option[String], contentType: Option[String], body: String) =>
          da.RemoteAccess_postCreateItem(name, from, mode, jenkinsCrumb, contentType, body) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Unit
        */
        private def postCreateView(da: DataAccessor): Endpoint[Unit] =
        post("createView" :: param("name") :: headerOption("Jenkins-Crumb") :: headerOption("Content-Type") :: jsonBody[String]) { (name: String, jenkinsCrumb: Option[String], contentType: Option[String], body: String) =>
          da.RemoteAccess_postCreateView(name, jenkinsCrumb, contentType, body) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Unit
        */
        private def postJobBuild(da: DataAccessor): Endpoint[Unit] =
        post("job" :: string :: "build" :: param("json") :: paramOption("token") :: headerOption("Jenkins-Crumb")) { (name: String, json: String, token: Option[String], jenkinsCrumb: Option[String]) =>
          da.RemoteAccess_postJobBuild(name, json, token, jenkinsCrumb) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Unit
        */
        private def postJobConfig(da: DataAccessor): Endpoint[Unit] =
        post("job" :: string :: "config.xml" :: jsonBody[String] :: headerOption("Jenkins-Crumb")) { (name: String, body: String, jenkinsCrumb: Option[String]) =>
          da.RemoteAccess_postJobConfig(name, body, jenkinsCrumb) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Unit
        */
        private def postJobDelete(da: DataAccessor): Endpoint[Unit] =
        post("job" :: string :: "doDelete" :: headerOption("Jenkins-Crumb")) { (name: String, jenkinsCrumb: Option[String]) =>
          da.RemoteAccess_postJobDelete(name, jenkinsCrumb) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Unit
        */
        private def postJobDisable(da: DataAccessor): Endpoint[Unit] =
        post("job" :: string :: "disable" :: headerOption("Jenkins-Crumb")) { (name: String, jenkinsCrumb: Option[String]) =>
          da.RemoteAccess_postJobDisable(name, jenkinsCrumb) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Unit
        */
        private def postJobEnable(da: DataAccessor): Endpoint[Unit] =
        post("job" :: string :: "enable" :: headerOption("Jenkins-Crumb")) { (name: String, jenkinsCrumb: Option[String]) =>
          da.RemoteAccess_postJobEnable(name, jenkinsCrumb) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Unit
        */
        private def postJobLastBuildStop(da: DataAccessor): Endpoint[Unit] =
        post("job" :: string :: "lastBuild" :: "stop" :: headerOption("Jenkins-Crumb")) { (name: String, jenkinsCrumb: Option[String]) =>
          da.RemoteAccess_postJobLastBuildStop(name, jenkinsCrumb) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Unit
        */
        private def postViewConfig(da: DataAccessor): Endpoint[Unit] =
        post("view" :: string :: "config.xml" :: jsonBody[String] :: headerOption("Jenkins-Crumb")) { (name: String, body: String, jenkinsCrumb: Option[String]) =>
          da.RemoteAccess_postViewConfig(name, body, jenkinsCrumb) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }


    implicit private def fileUploadToFile(fileUpload: FileUpload) : File = {
      fileUpload match {
        case upload: InMemoryFileUpload =>
          bytesToFile(Buf.ByteArray.Owned.extract(upload.content))
        case upload: OnDiskFileUpload =>
          upload.content
        case _ => null
      }
    }

    private def bytesToFile(input: Array[Byte]): java.io.File = {
      val file = File.createTempFile("tmpRemoteAccessApi", null)
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
