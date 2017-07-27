package io.swagger.client.api

import io.swagger.client.model.HudsonmodelComputerSet
import io.swagger.client.model.HudsonmodelFreeStyleBuild
import io.swagger.client.model.HudsonmodelFreeStyleProject
import io.swagger.client.model.HudsonmodelHudson
import io.swagger.client.model.HudsonmodelListView
import io.swagger.client.model.HudsonmodelQueue
import io.swagger.client.model.HudsonsecuritycsrfDefaultCrumbIssuer
import com.wordnik.swagger.client._
import scala.concurrent.Future
import collection.mutable

class RemoteAccessApi(client: TransportClient, config: SwaggerConfig) extends ApiClient(client, config) {

  def getComputer()(implicit reader: ClientResponseReader[HudsonmodelComputerSet]): Future[HudsonmodelComputerSet] = {
    // create path and map variables
    val path = (addFmt("/computer/api/json?depth=1"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getCrumb()(implicit reader: ClientResponseReader[HudsonsecuritycsrfDefaultCrumbIssuer]): Future[HudsonsecuritycsrfDefaultCrumbIssuer] = {
    // create path and map variables
    val path = (addFmt("/crumbIssuer/api/json"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getJenkins()(implicit reader: ClientResponseReader[HudsonmodelHudson]): Future[HudsonmodelHudson] = {
    // create path and map variables
    val path = (addFmt("/api/json"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getJob(name: String)(implicit reader: ClientResponseReader[HudsonmodelFreeStyleProject]): Future[HudsonmodelFreeStyleProject] = {
    // create path and map variables
    val path = (addFmt("/job/{name}/api/json")
        replaceAll ("\\{" + "name" + "\\}",name.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (name == null) throw new Exception("Missing required parameter 'name' when calling RemoteAccessApi->getJob")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getJobConfig(name: String)(implicit reader: ClientResponseReader[String]): Future[String] = {
    // create path and map variables
    val path = (addFmt("/job/{name}/config.xml")
        replaceAll ("\\{" + "name" + "\\}",name.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (name == null) throw new Exception("Missing required parameter 'name' when calling RemoteAccessApi->getJobConfig")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getJobLastBuild(name: String)(implicit reader: ClientResponseReader[HudsonmodelFreeStyleBuild]): Future[HudsonmodelFreeStyleBuild] = {
    // create path and map variables
    val path = (addFmt("/job/{name}/lastBuild/api/json")
        replaceAll ("\\{" + "name" + "\\}",name.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (name == null) throw new Exception("Missing required parameter 'name' when calling RemoteAccessApi->getJobLastBuild")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getJobProgressiveText(name: String,
      number: String,
      start: String)(implicit reader: ClientResponseReader[Unit]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/job/{name}/{number}/logText/progressiveText")
        replaceAll ("\\{" + "name" + "\\}",name.toString)
        replaceAll ("\\{" + "number" + "\\}",number.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (name == null) throw new Exception("Missing required parameter 'name' when calling RemoteAccessApi->getJobProgressiveText")

    if (number == null) throw new Exception("Missing required parameter 'number' when calling RemoteAccessApi->getJobProgressiveText")

    if (start == null) throw new Exception("Missing required parameter 'start' when calling RemoteAccessApi->getJobProgressiveText")

    queryParams += "start" -> start.toString

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getQueue()(implicit reader: ClientResponseReader[HudsonmodelQueue]): Future[HudsonmodelQueue] = {
    // create path and map variables
    val path = (addFmt("/queue/api/json"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getQueueItem(number: String)(implicit reader: ClientResponseReader[HudsonmodelQueue]): Future[HudsonmodelQueue] = {
    // create path and map variables
    val path = (addFmt("/queue/item/{number}/api/json")
        replaceAll ("\\{" + "number" + "\\}",number.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (number == null) throw new Exception("Missing required parameter 'number' when calling RemoteAccessApi->getQueueItem")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getView(name: String)(implicit reader: ClientResponseReader[HudsonmodelListView]): Future[HudsonmodelListView] = {
    // create path and map variables
    val path = (addFmt("/view/{name}/api/json")
        replaceAll ("\\{" + "name" + "\\}",name.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (name == null) throw new Exception("Missing required parameter 'name' when calling RemoteAccessApi->getView")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getViewConfig(name: String)(implicit reader: ClientResponseReader[String]): Future[String] = {
    // create path and map variables
    val path = (addFmt("/view/{name}/config.xml")
        replaceAll ("\\{" + "name" + "\\}",name.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (name == null) throw new Exception("Missing required parameter 'name' when calling RemoteAccessApi->getViewConfig")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def headJenkins()(implicit reader: ClientResponseReader[Unit]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/api/json"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]


    val resFuture = client.submit("HEAD", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def postCreateItem(name: String,
      from: Option[String] = None,
      mode: Option[String] = None,
      body: Option[String] = None,
      jenkinsCrumb: Option[String] = None,
      contentType: Option[String] = None
      )(implicit reader: ClientResponseReader[Unit], writer: RequestWriter[String]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/createItem"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (name == null) throw new Exception("Missing required parameter 'name' when calling RemoteAccessApi->postCreateItem")

    queryParams += "name" -> name.toString
    from match {
    case Some(param) => queryParams += "from" -> param.toString
    case _ => queryParams
    }
    mode match {
    case Some(param) => queryParams += "mode" -> param.toString
    case _ => queryParams
    }
    jenkinsCrumb match {
    case Some(param) => headerParams += "Jenkins-Crumb" -> param.toString
    case _ => headerParams
    }
    contentType match {
    case Some(param) => headerParams += "Content-Type" -> param.toString
    case _ => headerParams
    }

    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, writer.write(body))
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def postCreateView(name: String,
      body: Option[String] = None,
      jenkinsCrumb: Option[String] = None,
      contentType: Option[String] = None
      )(implicit reader: ClientResponseReader[Unit], writer: RequestWriter[String]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/createView"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (name == null) throw new Exception("Missing required parameter 'name' when calling RemoteAccessApi->postCreateView")

    queryParams += "name" -> name.toString
    jenkinsCrumb match {
    case Some(param) => headerParams += "Jenkins-Crumb" -> param.toString
    case _ => headerParams
    }
    contentType match {
    case Some(param) => headerParams += "Content-Type" -> param.toString
    case _ => headerParams
    }

    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, writer.write(body))
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def postJobBuild(name: String,
      json: String,
      token: Option[String] = None,
      jenkinsCrumb: Option[String] = None
      )(implicit reader: ClientResponseReader[Unit]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/job/{name}/build")
        replaceAll ("\\{" + "name" + "\\}",name.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (name == null) throw new Exception("Missing required parameter 'name' when calling RemoteAccessApi->postJobBuild")

    if (json == null) throw new Exception("Missing required parameter 'json' when calling RemoteAccessApi->postJobBuild")

    queryParams += "json" -> json.toString
    token match {
    case Some(param) => queryParams += "token" -> param.toString
    case _ => queryParams
    }
    jenkinsCrumb match {
    case Some(param) => headerParams += "Jenkins-Crumb" -> param.toString
    case _ => headerParams
    }

    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def postJobConfig(name: String,
      body: String,
      jenkinsCrumb: Option[String] = None
      )(implicit reader: ClientResponseReader[Unit], writer: RequestWriter[String]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/job/{name}/config.xml")
        replaceAll ("\\{" + "name" + "\\}",name.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (name == null) throw new Exception("Missing required parameter 'name' when calling RemoteAccessApi->postJobConfig")

    if (body == null) throw new Exception("Missing required parameter 'body' when calling RemoteAccessApi->postJobConfig")

    jenkinsCrumb match {
    case Some(param) => headerParams += "Jenkins-Crumb" -> param.toString
    case _ => headerParams
    }

    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, writer.write(body))
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def postJobDelete(name: String,
      jenkinsCrumb: Option[String] = None
      )(implicit reader: ClientResponseReader[Unit]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/job/{name}/doDelete")
        replaceAll ("\\{" + "name" + "\\}",name.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (name == null) throw new Exception("Missing required parameter 'name' when calling RemoteAccessApi->postJobDelete")

    jenkinsCrumb match {
    case Some(param) => headerParams += "Jenkins-Crumb" -> param.toString
    case _ => headerParams
    }

    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def postJobDisable(name: String,
      jenkinsCrumb: Option[String] = None
      )(implicit reader: ClientResponseReader[Unit]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/job/{name}/disable")
        replaceAll ("\\{" + "name" + "\\}",name.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (name == null) throw new Exception("Missing required parameter 'name' when calling RemoteAccessApi->postJobDisable")

    jenkinsCrumb match {
    case Some(param) => headerParams += "Jenkins-Crumb" -> param.toString
    case _ => headerParams
    }

    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def postJobEnable(name: String,
      jenkinsCrumb: Option[String] = None
      )(implicit reader: ClientResponseReader[Unit]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/job/{name}/enable")
        replaceAll ("\\{" + "name" + "\\}",name.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (name == null) throw new Exception("Missing required parameter 'name' when calling RemoteAccessApi->postJobEnable")

    jenkinsCrumb match {
    case Some(param) => headerParams += "Jenkins-Crumb" -> param.toString
    case _ => headerParams
    }

    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def postJobLastBuildStop(name: String,
      jenkinsCrumb: Option[String] = None
      )(implicit reader: ClientResponseReader[Unit]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/job/{name}/lastBuild/stop")
        replaceAll ("\\{" + "name" + "\\}",name.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (name == null) throw new Exception("Missing required parameter 'name' when calling RemoteAccessApi->postJobLastBuildStop")

    jenkinsCrumb match {
    case Some(param) => headerParams += "Jenkins-Crumb" -> param.toString
    case _ => headerParams
    }

    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def postViewConfig(name: String,
      body: String,
      jenkinsCrumb: Option[String] = None
      )(implicit reader: ClientResponseReader[Unit], writer: RequestWriter[String]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/view/{name}/config.xml")
        replaceAll ("\\{" + "name" + "\\}",name.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (name == null) throw new Exception("Missing required parameter 'name' when calling RemoteAccessApi->postViewConfig")

    if (body == null) throw new Exception("Missing required parameter 'body' when calling RemoteAccessApi->postViewConfig")

    jenkinsCrumb match {
    case Some(param) => headerParams += "Jenkins-Crumb" -> param.toString
    case _ => headerParams
    }

    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, writer.write(body))
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }


}
