
package org.openapitools.client.model


case class PipelineBranchesitempullRequest (
    _links: Option[PipelineBranchesitempullRequestlinks],
    _author: Option[String],
    _id: Option[String],
    _title: Option[String],
    _url: Option[String],
    _class: Option[String]
)
object PipelineBranchesitempullRequest {
    def toStringBody(var_links: Object, var_author: Object, var_id: Object, var_title: Object, var_url: Object, var_class: Object) =
        s"""
        | {
        | "links":$var_links,"author":$var_author,"id":$var_id,"title":$var_title,"url":$var_url,"class":$var_class
        | }
        """.stripMargin
}
