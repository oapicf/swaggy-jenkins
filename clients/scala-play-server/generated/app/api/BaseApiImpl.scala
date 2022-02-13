package api

import model.DefaultCrumbIssuer

/**
  * Provides a default implementation for [[BaseApi]].
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2022-02-13T02:38:35.589632Z[Etc/UTC]")
class BaseApiImpl extends BaseApi {
  /**
    * @inheritdoc
    */
  override def getCrumb(): DefaultCrumbIssuer = {
    // TODO: Implement better logic

    DefaultCrumbIssuer(None, None, None, Map.empty)
  }
}
