package io.swagger.client.api

import io.swagger.client.model.GetMultibranchPipeline
import io.swagger.client.model.GetOrganisations
import io.swagger.client.model.GetPipelines
import io.swagger.client.model.IojenkinsblueoceanrestimplpipelineBranchImpl
import io.swagger.client.model.IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl
import io.swagger.client.model.IojenkinsblueoceanserviceembeddedrestPipelineImpl
import io.swagger.client.model.SwaggyjenkinsOrganisation
import io.swagger.client.model.SwaggyjenkinsPipeline
import io.swagger.client.model.SwaggyjenkinsUser
import com.wordnik.swagger.client._
import scala.concurrent.Future
import collection.mutable

class BlueOceanApi(client: TransportClient, config: SwaggerConfig) extends ApiClient(client, config) {

  def getAuthenticatedUser(organisation: String)(implicit reader: ClientResponseReader[SwaggyjenkinsUser]): Future[SwaggyjenkinsUser] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organisation}/user/")
        replaceAll ("\\{" + "organisation" + "\\}",organisation.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organisation == null) throw new Exception("Missing required parameter 'organisation' when calling BlueOceanApi->getAuthenticatedUser")


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

  def getOrganisation(organisation: String)(implicit reader: ClientResponseReader[SwaggyjenkinsOrganisation]): Future[SwaggyjenkinsOrganisation] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organisation}")
        replaceAll ("\\{" + "organisation" + "\\}",organisation.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organisation == null) throw new Exception("Missing required parameter 'organisation' when calling BlueOceanApi->getOrganisation")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getOrganisations()(implicit reader: ClientResponseReader[GetOrganisations]): Future[GetOrganisations] = {
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

  def getPipelineBranchByOrg(organisation: String,
      pipeline: String,
      branch: String)(implicit reader: ClientResponseReader[IojenkinsblueoceanrestimplpipelineBranchImpl]): Future[IojenkinsblueoceanrestimplpipelineBranchImpl] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/")
        replaceAll ("\\{" + "organisation" + "\\}",organisation.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString)
        replaceAll ("\\{" + "branch" + "\\}",branch.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organisation == null) throw new Exception("Missing required parameter 'organisation' when calling BlueOceanApi->getPipelineBranchByOrg")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->getPipelineBranchByOrg")

    if (branch == null) throw new Exception("Missing required parameter 'branch' when calling BlueOceanApi->getPipelineBranchByOrg")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelineBranchesByOrg(organisation: String,
      pipeline: String)(implicit reader: ClientResponseReader[GetMultibranchPipeline]): Future[GetMultibranchPipeline] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches")
        replaceAll ("\\{" + "organisation" + "\\}",organisation.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organisation == null) throw new Exception("Missing required parameter 'organisation' when calling BlueOceanApi->getPipelineBranchesByOrg")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->getPipelineBranchesByOrg")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelineByOrg(organisation: String,
      pipeline: String)(implicit reader: ClientResponseReader[SwaggyjenkinsPipeline]): Future[SwaggyjenkinsPipeline] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organisation}/pipelines/{pipeline}")
        replaceAll ("\\{" + "organisation" + "\\}",organisation.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organisation == null) throw new Exception("Missing required parameter 'organisation' when calling BlueOceanApi->getPipelineByOrg")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->getPipelineByOrg")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelineFolderByOrg(organisation: String,
      folder: String)(implicit reader: ClientResponseReader[IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl]): Future[IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organisation}/pipelines/{folder}/")
        replaceAll ("\\{" + "organisation" + "\\}",organisation.toString)
        replaceAll ("\\{" + "folder" + "\\}",folder.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organisation == null) throw new Exception("Missing required parameter 'organisation' when calling BlueOceanApi->getPipelineFolderByOrg")

    if (folder == null) throw new Exception("Missing required parameter 'folder' when calling BlueOceanApi->getPipelineFolderByOrg")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelineFolderByOrg_0(organisation: String,
      pipeline: String,
      folder: String)(implicit reader: ClientResponseReader[IojenkinsblueoceanserviceembeddedrestPipelineImpl]): Future[IojenkinsblueoceanserviceembeddedrestPipelineImpl] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline}")
        replaceAll ("\\{" + "organisation" + "\\}",organisation.toString)
        replaceAll ("\\{" + "pipeline" + "\\}",pipeline.toString)
        replaceAll ("\\{" + "folder" + "\\}",folder.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organisation == null) throw new Exception("Missing required parameter 'organisation' when calling BlueOceanApi->getPipelineFolderByOrg_0")

    if (pipeline == null) throw new Exception("Missing required parameter 'pipeline' when calling BlueOceanApi->getPipelineFolderByOrg_0")

    if (folder == null) throw new Exception("Missing required parameter 'folder' when calling BlueOceanApi->getPipelineFolderByOrg_0")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getPipelinesByOrg(organisation: String)(implicit reader: ClientResponseReader[GetPipelines]): Future[GetPipelines] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organisation}/pipelines/")
        replaceAll ("\\{" + "organisation" + "\\}",organisation.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organisation == null) throw new Exception("Missing required parameter 'organisation' when calling BlueOceanApi->getPipelinesByOrg")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getUser(organisation: String,
      user: String)(implicit reader: ClientResponseReader[SwaggyjenkinsUser]): Future[SwaggyjenkinsUser] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organisation}/users/{user}")
        replaceAll ("\\{" + "organisation" + "\\}",organisation.toString)
        replaceAll ("\\{" + "user" + "\\}",user.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organisation == null) throw new Exception("Missing required parameter 'organisation' when calling BlueOceanApi->getUser")

    if (user == null) throw new Exception("Missing required parameter 'user' when calling BlueOceanApi->getUser")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getUsers(organisation: String)(implicit reader: ClientResponseReader[SwaggyjenkinsUser]): Future[SwaggyjenkinsUser] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/organizations/{organisation}/users/")
        replaceAll ("\\{" + "organisation" + "\\}",organisation.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (organisation == null) throw new Exception("Missing required parameter 'organisation' when calling BlueOceanApi->getUsers")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def search(q: String)(implicit reader: ClientResponseReader[String]): Future[String] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/classes/"))

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

  def search_0(q: String)(implicit reader: ClientResponseReader[String]): Future[String] = {
    // create path and map variables
    val path = (addFmt("/blue/rest/search/"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (q == null) throw new Exception("Missing required parameter 'q' when calling BlueOceanApi->search_0")

    queryParams += "q" -> q.toString

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }


}
