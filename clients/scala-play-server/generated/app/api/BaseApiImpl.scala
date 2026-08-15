package api

import model.DefaultCrumbIssuer

/**
  * Provides a default implementation for [[BaseApi]].
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-15T02:30:45.020896586Z[Etc/UTC]", comments = "Generator version: 7.24.0")
class BaseApiImpl extends BaseApi {
  /**
    * @inheritdoc
    */
  override def getCrumb(): DefaultCrumbIssuer = {
    // TODO: Implement better logic

    DefaultCrumbIssuer(None, None, None)
  }
}
