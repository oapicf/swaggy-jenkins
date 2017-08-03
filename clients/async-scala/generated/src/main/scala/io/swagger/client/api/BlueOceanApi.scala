package io.swagger.client.api

import io.swagger.client.model.Body
import io.swagger.client.model.BranchImpl
import io.swagger.client.model.FavoriteImpl
import io.swagger.client.model.GithubScm
import io.swagger.client.model.MultibranchPipeline
import io.swagger.client.model.Organisation
import io.swagger.client.model.Organisations
import io.swagger.client.model.Pipeline
import io.swagger.client.model.PipelineActivities
import io.swagger.client.model.PipelineFolderImpl
import io.swagger.client.model.PipelineImpl
import io.swagger.client.model.PipelineQueue
import io.swagger.client.model.PipelineRun
import io.swagger.client.model.PipelineRunNode
import io.swagger.client.model.PipelineRunNodeSteps
import io.swagger.client.model.PipelineRunNodes
import io.swagger.client.model.PipelineRuns
import io.swagger.client.model.PipelineStepImpl
import io.swagger.client.model.Pipelines
import io.swagger.client.model.QueueItemImpl
import io.swagger.client.model.ScmOrganisations
import io.swagger.client.model.User
import io.swagger.client.model.UserFavorites
import com.wordnik.swagger.client._
import scala.concurrent.Future
import collection.mutable

class BlueOceanApi(client: TransportClient, config: SwaggerConfig) extends ApiClient(client, config) {

  def deletePipelineQueueItem(organization: String,
      pipeline: String,
      queue: String)(implicit reader: ClientResponseReader[Unit]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString)
        replaceAll ("\\{" + "queue" + "\\}",queue.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->deletePipelineQueueItem")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->deletePipelineQueueItem")

    if (queue == null) throw new Exception("Missing required parameter 'queue' when calling BlueOceanApi->deletePipelineQueueItem")


    val resFuture = client.submit("DELETE", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getAuthenticatedUser(organization: String)(implicit reader: ClientResponseReader[User]): Future[User] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/user/")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getAuthenticatedUser")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getClasses(_class: String)(implicit reader: ClientResponseReader[String]): Future[String] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/classes/{class}")
        replaceAll ("\\{" + "class" + "\\}",_class.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (_class == null) throw new Exception("Missing required parameter '_class' when calling BlueOceanApi->getClasses")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getOrganisation(organization: String)(implicit reader: ClientResponseReader[Organisation]): Future[Organisation] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getOrganisation")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getOrganisations()(implicit reader: ClientResponseReader[Organisations]): Future[Organisations] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipeline(organization: String,
      pipeline: String)(implicit reader: ClientResponseReader[Pipeline]): Future[Pipeline] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{pipeline}")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getPipeline")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->getPipeline")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelineActivities(organization: String,
      pipeline: String)(implicit reader: ClientResponseReader[PipelineActivities]): Future[PipelineActivities] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getPipelineActivities")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->getPipelineActivities")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelineBranch(organization: String,
      pipeline: String,
      branch: String)(implicit reader: ClientResponseReader[BranchImpl]): Future[BranchImpl] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString)
        replaceAll ("\\{" + "branch" + "\\}",branch.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getPipelineBranch")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->getPipelineBranch")

    if (branch == null) throw new Exception("Missing required parameter 'branch' when calling BlueOceanApi->getPipelineBranch")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelineBranchRun(organization: String,
      pipeline: String,
      branch: String,
      run: String)(implicit reader: ClientResponseReader[PipelineRun]): Future[PipelineRun] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString)
        replaceAll ("\\{" + "branch" + "\\}",branch.toString)
        replaceAll ("\\{" + "run" + "\\}",run.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getPipelineBranchRun")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->getPipelineBranchRun")

    if (branch == null) throw new Exception("Missing required parameter 'branch' when calling BlueOceanApi->getPipelineBranchRun")

    if (run == null) throw new Exception("Missing required parameter 'run' when calling BlueOceanApi->getPipelineBranchRun")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelineBranches(organization: String,
      pipeline: String)(implicit reader: ClientResponseReader[MultibranchPipeline]): Future[MultibranchPipeline] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getPipelineBranches")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->getPipelineBranches")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelineFolder(organization: String,
      folder: String)(implicit reader: ClientResponseReader[PipelineFolderImpl]): Future[PipelineFolderImpl] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{folder}/")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "folder" + "\\}",folder.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getPipelineFolder")

    if (folder == null) throw new Exception("Missing required parameter 'folder' when calling BlueOceanApi->getPipelineFolder")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelineFolderPipeline(organization: String,
      pipeline: String,
      folder: String)(implicit reader: ClientResponseReader[PipelineImpl]): Future[PipelineImpl] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString)
        replaceAll ("\\{" + "folder" + "\\}",folder.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getPipelineFolderPipeline")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->getPipelineFolderPipeline")

    if (folder == null) throw new Exception("Missing required parameter 'folder' when calling BlueOceanApi->getPipelineFolderPipeline")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelineQueue(organization: String,
      pipeline: String)(implicit reader: ClientResponseReader[PipelineQueue]): Future[PipelineQueue] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getPipelineQueue")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->getPipelineQueue")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelineRun(organization: String,
      pipeline: String,
      run: String)(implicit reader: ClientResponseReader[PipelineRun]): Future[PipelineRun] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString)
        replaceAll ("\\{" + "run" + "\\}",run.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getPipelineRun")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->getPipelineRun")

    if (run == null) throw new Exception("Missing required parameter 'run' when calling BlueOceanApi->getPipelineRun")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelineRunLog(organization: String,
      pipeline: String,
      run: String,
      start: Option[Integer] = None,
      download: Option[Boolean] = None
      )(implicit reader: ClientResponseReader[String]): Future[String] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString)
        replaceAll ("\\{" + "run" + "\\}",run.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getPipelineRunLog")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->getPipelineRunLog")

    if (run == null) throw new Exception("Missing required parameter 'run' when calling BlueOceanApi->getPipelineRunLog")

    start match {
    case Some(param) => queryParams += "start" -> param.toString
    case _ => queryParams
    }
    download match {
    case Some(param) => queryParams += "download" -> param.toString
    case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelineRunNode(organization: String,
      pipeline: String,
      run: String,
      node: String)(implicit reader: ClientResponseReader[PipelineRunNode]): Future[PipelineRunNode] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString)
        replaceAll ("\\{" + "run" + "\\}",run.toString)
        replaceAll ("\\{" + "node" + "\\}",node.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getPipelineRunNode")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->getPipelineRunNode")

    if (run == null) throw new Exception("Missing required parameter 'run' when calling BlueOceanApi->getPipelineRunNode")

    if (node == null) throw new Exception("Missing required parameter 'node' when calling BlueOceanApi->getPipelineRunNode")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelineRunNodeStep(organization: String,
      pipeline: String,
      run: String,
      node: String,
      step: String)(implicit reader: ClientResponseReader[PipelineStepImpl]): Future[PipelineStepImpl] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString)
        replaceAll ("\\{" + "run" + "\\}",run.toString)
        replaceAll ("\\{" + "node" + "\\}",node.toString)
        replaceAll ("\\{" + "step" + "\\}",step.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getPipelineRunNodeStep")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->getPipelineRunNodeStep")

    if (run == null) throw new Exception("Missing required parameter 'run' when calling BlueOceanApi->getPipelineRunNodeStep")

    if (node == null) throw new Exception("Missing required parameter 'node' when calling BlueOceanApi->getPipelineRunNodeStep")

    if (step == null) throw new Exception("Missing required parameter 'step' when calling BlueOceanApi->getPipelineRunNodeStep")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelineRunNodeStepLog(organization: String,
      pipeline: String,
      run: String,
      node: String,
      step: String)(implicit reader: ClientResponseReader[String]): Future[String] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString)
        replaceAll ("\\{" + "run" + "\\}",run.toString)
        replaceAll ("\\{" + "node" + "\\}",node.toString)
        replaceAll ("\\{" + "step" + "\\}",step.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getPipelineRunNodeStepLog")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->getPipelineRunNodeStepLog")

    if (run == null) throw new Exception("Missing required parameter 'run' when calling BlueOceanApi->getPipelineRunNodeStepLog")

    if (node == null) throw new Exception("Missing required parameter 'node' when calling BlueOceanApi->getPipelineRunNodeStepLog")

    if (step == null) throw new Exception("Missing required parameter 'step' when calling BlueOceanApi->getPipelineRunNodeStepLog")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelineRunNodeSteps(organization: String,
      pipeline: String,
      run: String,
      node: String)(implicit reader: ClientResponseReader[PipelineRunNodeSteps]): Future[PipelineRunNodeSteps] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString)
        replaceAll ("\\{" + "run" + "\\}",run.toString)
        replaceAll ("\\{" + "node" + "\\}",node.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getPipelineRunNodeSteps")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->getPipelineRunNodeSteps")

    if (run == null) throw new Exception("Missing required parameter 'run' when calling BlueOceanApi->getPipelineRunNodeSteps")

    if (node == null) throw new Exception("Missing required parameter 'node' when calling BlueOceanApi->getPipelineRunNodeSteps")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelineRunNodes(organization: String,
      pipeline: String,
      run: String)(implicit reader: ClientResponseReader[PipelineRunNodes]): Future[PipelineRunNodes] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString)
        replaceAll ("\\{" + "run" + "\\}",run.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getPipelineRunNodes")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->getPipelineRunNodes")

    if (run == null) throw new Exception("Missing required parameter 'run' when calling BlueOceanApi->getPipelineRunNodes")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelineRuns(organization: String,
      pipeline: String)(implicit reader: ClientResponseReader[PipelineRuns]): Future[PipelineRuns] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getPipelineRuns")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->getPipelineRuns")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelines(organization: String)(implicit reader: ClientResponseReader[Pipelines]): Future[Pipelines] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getPipelines")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getSCM(organization: String,
      scm: String)(implicit reader: ClientResponseReader[GithubScm]): Future[GithubScm] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/scm/{scm}")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "scm" + "\\}",scm.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getSCM")

    if (scm == null) throw new Exception("Missing required parameter 'scm' when calling BlueOceanApi->getSCM")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getSCMOrganisationRepositories(organization: String,
      scm: String,
      scmOrganisation: String,
      credentialId: Option[String] = None,
      pageSize: Option[Integer] = None,
      pageNumber: Option[Integer] = None
      )(implicit reader: ClientResponseReader[ScmOrganisations]): Future[ScmOrganisations] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "scm" + "\\}",scm.toString)
        replaceAll ("\\{" + "scmOrganisation" + "\\}",scmOrganisation.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getSCMOrganisationRepositories")

    if (scm == null) throw new Exception("Missing required parameter 'scm' when calling BlueOceanApi->getSCMOrganisationRepositories")

    if (scmOrganisation == null) throw new Exception("Missing required parameter 'scmOrganisation' when calling BlueOceanApi->getSCMOrganisationRepositories")

    credentialId match {
    case Some(param) => queryParams += "credentialId" -> param.toString
    case _ => queryParams
    }
    pageSize match {
    case Some(param) => queryParams += "pageSize" -> param.toString
    case _ => queryParams
    }
    pageNumber match {
    case Some(param) => queryParams += "pageNumber" -> param.toString
    case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getSCMOrganisationRepository(organization: String,
      scm: String,
      scmOrganisation: String,
      repository: String,
      credentialId: Option[String] = None
      )(implicit reader: ClientResponseReader[ScmOrganisations]): Future[ScmOrganisations] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "scm" + "\\}",scm.toString)
        replaceAll ("\\{" + "scmOrganisation" + "\\}",scmOrganisation.toString)
        replaceAll ("\\{" + "repository" + "\\}",repository.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getSCMOrganisationRepository")

    if (scm == null) throw new Exception("Missing required parameter 'scm' when calling BlueOceanApi->getSCMOrganisationRepository")

    if (scmOrganisation == null) throw new Exception("Missing required parameter 'scmOrganisation' when calling BlueOceanApi->getSCMOrganisationRepository")

    if (repository == null) throw new Exception("Missing required parameter 'repository' when calling BlueOceanApi->getSCMOrganisationRepository")

    credentialId match {
    case Some(param) => queryParams += "credentialId" -> param.toString
    case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getSCMOrganisations(organization: String,
      scm: String,
      credentialId: Option[String] = None
      )(implicit reader: ClientResponseReader[ScmOrganisations]): Future[ScmOrganisations] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/scm/{scm}/organizations")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "scm" + "\\}",scm.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getSCMOrganisations")

    if (scm == null) throw new Exception("Missing required parameter 'scm' when calling BlueOceanApi->getSCMOrganisations")

    credentialId match {
    case Some(param) => queryParams += "credentialId" -> param.toString
    case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getUser(organization: String,
      user: String)(implicit reader: ClientResponseReader[User]): Future[User] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/users/{user}")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "user" + "\\}",user.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getUser")

    if (user == null) throw new Exception("Missing required parameter 'user' when calling BlueOceanApi->getUser")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getUserFavorites(user: String)(implicit reader: ClientResponseReader[UserFavorites]): Future[UserFavorites] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/users/{user}/favorites")
        replaceAll ("\\{" + "user" + "\\}",user.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (user == null) throw new Exception("Missing required parameter 'user' when calling BlueOceanApi->getUserFavorites")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getUsers(organization: String)(implicit reader: ClientResponseReader[User]): Future[User] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/users/")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->getUsers")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def postPipelineRun(organization: String,
      pipeline: String,
      run: String)(implicit reader: ClientResponseReader[QueueItemImpl]): Future[QueueItemImpl] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString)
        replaceAll ("\\{" + "run" + "\\}",run.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->postPipelineRun")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->postPipelineRun")

    if (run == null) throw new Exception("Missing required parameter 'run' when calling BlueOceanApi->postPipelineRun")


    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def postPipelineRuns(organization: String,
      pipeline: String)(implicit reader: ClientResponseReader[QueueItemImpl]): Future[QueueItemImpl] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->postPipelineRuns")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->postPipelineRuns")


    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def putPipelineFavorite(organization: String,
      pipeline: String,
      body: Body)(implicit reader: ClientResponseReader[FavoriteImpl], writer: RequestWriter[Body]): Future[FavoriteImpl] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->putPipelineFavorite")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->putPipelineFavorite")

    if (body == null) throw new Exception("Missing required parameter 'body' when calling BlueOceanApi->putPipelineFavorite")

    val resFuture = client.submit("PUT", path, queryParams.toMap, headerParams.toMap, writer.write(body))
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def putPipelineRun(organization: String,
      pipeline: String,
      run: String,
      blocking: Option[String] = None,
      timeOutInSecs: Option[Integer] = None
      )(implicit reader: ClientResponseReader[PipelineRun]): Future[PipelineRun] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop")
        replaceAll ("\\{" + "organization" + "\\}",organization.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString)
        replaceAll ("\\{" + "run" + "\\}",run.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organization == null) throw new Exception("Missing required parameter 'organization' when calling BlueOceanApi->putPipelineRun")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->putPipelineRun")

    if (run == null) throw new Exception("Missing required parameter 'run' when calling BlueOceanApi->putPipelineRun")

    blocking match {
    case Some(param) => queryParams += "blocking" -> param.toString
    case _ => queryParams
    }
    timeOutInSecs match {
    case Some(param) => queryParams += "timeOutInSecs" -> param.toString
    case _ => queryParams
    }

    val resFuture = client.submit("PUT", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def search(q: String)(implicit reader: ClientResponseReader[String]): Future[String] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/search/"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (q == null) throw new Exception("Missing required parameter 'q' when calling BlueOceanApi->search")

    queryParams += "q" -> q.toString

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def searchClasses(q: String)(implicit reader: ClientResponseReader[String]): Future[String] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/classes/"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (q == null) throw new Exception("Missing required parameter 'q' when calling BlueOceanApi->searchClasses")

    queryParams += "q" -> q.toString

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }


}
