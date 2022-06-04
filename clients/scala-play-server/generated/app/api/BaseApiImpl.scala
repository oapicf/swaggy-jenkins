package api

import model.DefaultCrumbIssuer

/**
  * Provides a default implementation for [[BaseApi]].
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-06-04T08:11:54.386355Z[Etc/UTC]")
class BaseApiImpl extends BaseApi {
  /**
    * @inheritdoc
    */
  override def getCrumb(): DefaultCrumbIssuer = {
    // TODO: Implement better logic

    DefaultCrumbIssuer(None, None, None, Map.empty)
  }
}
