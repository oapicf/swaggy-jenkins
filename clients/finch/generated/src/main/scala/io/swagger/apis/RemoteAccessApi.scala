package io.swagger.apis

import java.io._
import java.util.Date
import io.swagger._
import io.swagger.models._
import io.swagger.models.ComputerSet
import io.swagger.models.DefaultCrumbIssuer
import io.swagger.models.FreeStyleBuild
import io.swagger.models.FreeStyleProject
import io.swagger.models.Hudson
import io.swagger.models.ListView
import io.swagger.models.Queue
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

object RemoteAccessApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
            getComputer(da) :+:
            getCrumb(da) :+:
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

        /**
        * 
        * @return And endpoint representing a ComputerSet
        */
        private def getComputer(da: DataAccessor): Endpoint[ComputerSet] =
        get("computer" :: "api" :: "json"  :: int) { (depth: Int) => 
                Ok(da.RemoteAccess_getComputer(depth))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a DefaultCrumbIssuer
        */
        private def getCrumb(da: DataAccessor): Endpoint[DefaultCrumbIssuer] =
        get("crumbIssuer" :: "api" :: "json" ) { 
                Ok(da.RemoteAccess_getCrumb())
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a Hudson
        */
        private def getJenkins(da: DataAccessor): Endpoint[Hudson] =
        get("api" :: "json" ) { 
                Ok(da.RemoteAccess_getJenkins())
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a FreeStyleProject
        */
        private def getJob(da: DataAccessor): Endpoint[FreeStyleProject] =
        get("job" :: string :: "api" :: "json" ) { (name: String) => 
                Ok(da.RemoteAccess_getJob(name))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a String
        */
        private def getJobConfig(da: DataAccessor): Endpoint[String] =
        get("job" :: string :: "config.xml" ) { (name: String) => 
                Ok(da.RemoteAccess_getJobConfig(name))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a FreeStyleBuild
        */
        private def getJobLastBuild(da: DataAccessor): Endpoint[FreeStyleBuild] =
        get("job" :: string :: "lastBuild" :: "api" :: "json" ) { (name: String) => 
                Ok(da.RemoteAccess_getJobLastBuild(name))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a Unit
        */
        private def getJobProgressiveText(da: DataAccessor): Endpoint[Unit] =
        get("job" :: string :: string :: "logText" :: "progressiveText"  :: string) { (name: String, number: String, start: String) => 
                da.RemoteAccess_getJobProgressiveText(name, number, start)
                NoContent[Unit]
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a Queue
        */
        private def getQueue(da: DataAccessor): Endpoint[Queue] =
        get("queue" :: "api" :: "json" ) { 
                Ok(da.RemoteAccess_getQueue())
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a Queue
        */
        private def getQueueItem(da: DataAccessor): Endpoint[Queue] =
        get("queue" :: "item" :: string :: "api" :: "json" ) { (number: String) => 
                Ok(da.RemoteAccess_getQueueItem(number))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a ListView
        */
        private def getView(da: DataAccessor): Endpoint[ListView] =
        get("view" :: string :: "api" :: "json" ) { (name: String) => 
                Ok(da.RemoteAccess_getView(name))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a String
        */
        private def getViewConfig(da: DataAccessor): Endpoint[String] =
        get("view" :: string :: "config.xml" ) { (name: String) => 
                Ok(da.RemoteAccess_getViewConfig(name))
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a Unit
        */
        private def headJenkins(da: DataAccessor): Endpoint[Unit] =
        head("api" :: "json" ) { 
                da.RemoteAccess_headJenkins()
                NoContent[Unit]
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a Unit
        */
        private def postCreateItem(da: DataAccessor): Endpoint[Unit] =
        post("createItem"  :: string :: string :: string :: string :: string :: string) { (name: String, from: String, mode: String, body: String, jenkinsCrumb: String, contentType: String) => 
                da.RemoteAccess_postCreateItem(name, from, mode, body, jenkinsCrumb, contentType)
                NoContent[Unit]
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a Unit
        */
        private def postCreateView(da: DataAccessor): Endpoint[Unit] =
        post("createView"  :: string :: string :: string :: string) { (name: String, body: String, jenkinsCrumb: String, contentType: String) => 
                da.RemoteAccess_postCreateView(name, body, jenkinsCrumb, contentType)
                NoContent[Unit]
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a Unit
        */
        private def postJobBuild(da: DataAccessor): Endpoint[Unit] =
        post("job" :: string :: "build"  :: string :: string :: string) { (name: String, json: String, token: String, jenkinsCrumb: String) => 
                da.RemoteAccess_postJobBuild(name, json, token, jenkinsCrumb)
                NoContent[Unit]
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a Unit
        */
        private def postJobConfig(da: DataAccessor): Endpoint[Unit] =
        post("job" :: string :: "config.xml"  :: string :: string) { (name: String, body: String, jenkinsCrumb: String) => 
                da.RemoteAccess_postJobConfig(name, body, jenkinsCrumb)
                NoContent[Unit]
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a Unit
        */
        private def postJobDelete(da: DataAccessor): Endpoint[Unit] =
        post("job" :: string :: "doDelete"  :: string) { (name: String, jenkinsCrumb: String) => 
                da.RemoteAccess_postJobDelete(name, jenkinsCrumb)
                NoContent[Unit]
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a Unit
        */
        private def postJobDisable(da: DataAccessor): Endpoint[Unit] =
        post("job" :: string :: "disable"  :: string) { (name: String, jenkinsCrumb: String) => 
                da.RemoteAccess_postJobDisable(name, jenkinsCrumb)
                NoContent[Unit]
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a Unit
        */
        private def postJobEnable(da: DataAccessor): Endpoint[Unit] =
        post("job" :: string :: "enable"  :: string) { (name: String, jenkinsCrumb: String) => 
                da.RemoteAccess_postJobEnable(name, jenkinsCrumb)
                NoContent[Unit]
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a Unit
        */
        private def postJobLastBuildStop(da: DataAccessor): Endpoint[Unit] =
        post("job" :: string :: "lastBuild" :: "stop"  :: string) { (name: String, jenkinsCrumb: String) => 
                da.RemoteAccess_postJobLastBuildStop(name, jenkinsCrumb)
                NoContent[Unit]
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return And endpoint representing a Unit
        */
        private def postViewConfig(da: DataAccessor): Endpoint[Unit] =
        post("view" :: string :: "config.xml"  :: string :: string) { (name: String, body: String, jenkinsCrumb: String) => 
                da.RemoteAccess_postViewConfig(name, body, jenkinsCrumb)
                NoContent[Unit]
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
