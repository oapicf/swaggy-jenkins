
package org.openapitools.client.model


case class GithubContent (
    _name: Option[String],
    _sha: Option[String],
    _class: Option[String],
    _repo: Option[String],
    _size: Option[Integer],
    _owner: Option[String],
    _path: Option[String],
    _base64Data: Option[String]
)
object GithubContent {
    def toStringBody(var_name: Object, var_sha: Object, var_class: Object, var_repo: Object, var_size: Object, var_owner: Object, var_path: Object, var_base64Data: Object) =
        s"""
        | {
        | "name":$var_name,"sha":$var_sha,"class":$var_class,"repo":$var_repo,"size":$var_size,"owner":$var_owner,"path":$var_path,"base64Data":$var_base64Data
        | }
        """.stripMargin
}
