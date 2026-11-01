package api

import model.DefaultCrumbIssuer

/**
  * Provides a default implementation for [[BaseApi]].
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-11-01T13:50:45.681735658Z[Etc/UTC]", comments = "Generator version: 7.26.0")
class BaseApiImpl extends BaseApi {
  /**
    * @inheritdoc
    */
  override def getCrumb(): DefaultCrumbIssuer = {
    // TODO: Implement better logic

    DefaultCrumbIssuer(None, None, None)
  }
}
