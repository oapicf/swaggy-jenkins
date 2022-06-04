package api

import model.ComputerSet
import model.FreeStyleBuild
import model.FreeStyleProject
import model.Hudson
import model.ListView
import model.Queue

/**
  * Provides a default implementation for [[RemoteAccessApi]].
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
class RemoteAccessApiImpl extends RemoteAccessApi {
  /**
    * @inheritdoc
    */
  override def getComputer(depth: Int): ComputerSet = {
    // TODO: Implement better logic

    ComputerSet(None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getJenkins(): Hudson = {
    // TODO: Implement better logic

    Hudson(None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getJob(name: String): FreeStyleProject = {
    // TODO: Implement better logic

    FreeStyleProject(None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getJobConfig(name: String): String = {
    // TODO: Implement better logic

    ""
  }

  /**
    * @inheritdoc
    */
  override def getJobLastBuild(name: String): FreeStyleBuild = {
    // TODO: Implement better logic

    FreeStyleBuild(None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getJobProgressiveText(name: String, number: String, start: String): Unit = {
    // TODO: Implement better logic

    
  }

  /**
    * @inheritdoc
    */
  override def getQueue(): Queue = {
    // TODO: Implement better logic

    Queue(None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getQueueItem(number: String): Queue = {
    // TODO: Implement better logic

    Queue(None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getView(name: String): ListView = {
    // TODO: Implement better logic

    ListView(None, None, None, None, None, Map.empty)
  }

  /**
    * @inheritdoc
    */
  override def getViewConfig(name: String): String = {
    // TODO: Implement better logic

    ""
  }

  /**
    * @inheritdoc
    */
  override def headJenkins(): Unit = {
    // TODO: Implement better logic

    
  }

  /**
    * @inheritdoc
    */
  override def postCreateItem(name: String, from: Option[String], mode: Option[String], jenkinsCrumb: Option[String], contentType: Option[String], body: Option[String]): Unit = {
    // TODO: Implement better logic

    
  }

  /**
    * @inheritdoc
    */
  override def postCreateView(name: String, jenkinsCrumb: Option[String], contentType: Option[String], body: Option[String]): Unit = {
    // TODO: Implement better logic

    
  }

  /**
    * @inheritdoc
    */
  override def postJobBuild(name: String, json: String, token: Option[String], jenkinsCrumb: Option[String]): Unit = {
    // TODO: Implement better logic

    
  }

  /**
    * @inheritdoc
    */
  override def postJobConfig(name: String, body: String, jenkinsCrumb: Option[String]): Unit = {
    // TODO: Implement better logic

    
  }

  /**
    * @inheritdoc
    */
  override def postJobDelete(name: String, jenkinsCrumb: Option[String]): Unit = {
    // TODO: Implement better logic

    
  }

  /**
    * @inheritdoc
    */
  override def postJobDisable(name: String, jenkinsCrumb: Option[String]): Unit = {
    // TODO: Implement better logic

    
  }

  /**
    * @inheritdoc
    */
  override def postJobEnable(name: String, jenkinsCrumb: Option[String]): Unit = {
    // TODO: Implement better logic

    
  }

  /**
    * @inheritdoc
    */
  override def postJobLastBuildStop(name: String, jenkinsCrumb: Option[String]): Unit = {
    // TODO: Implement better logic

    
  }

  /**
    * @inheritdoc
    */
  override def postViewConfig(name: String, body: String, jenkinsCrumb: Option[String]): Unit = {
    // TODO: Implement better logic

    
  }
}
