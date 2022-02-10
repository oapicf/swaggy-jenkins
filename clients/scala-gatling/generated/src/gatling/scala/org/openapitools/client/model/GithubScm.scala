
package org.openapitools.client.model


case class GithubScm (
    _class: Option[String],
    _links: Option[GithubScmlinks],
    _credentialId: Option[String],
    _id: Option[String],
    _uri: Option[String]
)
object GithubScm {
    def toStringBody(var_class: Object, var_links: Object, var_credentialId: Object, var_id: Object, var_uri: Object) =
        s"""
        | {
        | "class":$var_class,"links":$var_links,"credentialId":$var_credentialId,"id":$var_id,"uri":$var_uri
        | }
        """.stripMargin
}
