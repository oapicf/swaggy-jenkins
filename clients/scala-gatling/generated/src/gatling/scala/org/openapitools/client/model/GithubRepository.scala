
package org.openapitools.client.model


case class GithubRepository (
    _class: Option[String],
    _links: Option[GithubRepositorylinks],
    _defaultBranch: Option[String],
    _description: Option[String],
    _name: Option[String],
    _permissions: Option[GithubRepositorypermissions],
    _private: Option[Boolean],
    _fullName: Option[String]
)
object GithubRepository {
    def toStringBody(var_class: Object, var_links: Object, var_defaultBranch: Object, var_description: Object, var_name: Object, var_permissions: Object, var_private: Object, var_fullName: Object) =
        s"""
        | {
        | "class":$var_class,"links":$var_links,"defaultBranch":$var_defaultBranch,"description":$var_description,"name":$var_name,"permissions":$var_permissions,"private":$var_private,"fullName":$var_fullName
        | }
        """.stripMargin
}
