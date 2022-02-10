
package org.openapitools.client.model


case class GithubOrganization (
    _class: Option[String],
    _links: Option[GithubOrganizationlinks],
    _jenkinsOrganizationPipeline: Option[Boolean],
    _name: Option[String]
)
object GithubOrganization {
    def toStringBody(var_class: Object, var_links: Object, var_jenkinsOrganizationPipeline: Object, var_name: Object) =
        s"""
        | {
        | "class":$var_class,"links":$var_links,"jenkinsOrganizationPipeline":$var_jenkinsOrganizationPipeline,"name":$var_name
        | }
        """.stripMargin
}
