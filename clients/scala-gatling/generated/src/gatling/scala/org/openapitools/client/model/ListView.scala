
package org.openapitools.client.model


case class ListView (
    _class: Option[String],
    _description: Option[String],
    _jobs: Option[List[FreeStyleProject]],
    _name: Option[String],
    _url: Option[String]
)
object ListView {
    def toStringBody(var_class: Object, var_description: Object, var_jobs: Object, var_name: Object, var_url: Object) =
        s"""
        | {
        | "class":$var_class,"description":$var_description,"jobs":$var_jobs,"name":$var_name,"url":$var_url
        | }
        """.stripMargin
}
