
package org.openapitools.client.model


case class PipelineFolderImpl (
    _class: Option[String],
    _displayName: Option[String],
    _fullName: Option[String],
    _name: Option[String],
    _organization: Option[String],
    _numberOfFolders: Option[Integer],
    _numberOfPipelines: Option[Integer]
)
object PipelineFolderImpl {
    def toStringBody(var_class: Object, var_displayName: Object, var_fullName: Object, var_name: Object, var_organization: Object, var_numberOfFolders: Object, var_numberOfPipelines: Object) =
        s"""
        | {
        | "class":$var_class,"displayName":$var_displayName,"fullName":$var_fullName,"name":$var_name,"organization":$var_organization,"numberOfFolders":$var_numberOfFolders,"numberOfPipelines":$var_numberOfPipelines
        | }
        """.stripMargin
}
