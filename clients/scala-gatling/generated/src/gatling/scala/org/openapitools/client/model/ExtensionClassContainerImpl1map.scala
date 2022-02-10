
package org.openapitools.client.model


case class ExtensionClassContainerImpl1map (
    _ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: Option[ExtensionClassImpl],
    _ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: Option[ExtensionClassImpl],
    _class: Option[String]
)
object ExtensionClassContainerImpl1map {
    def toStringBody(var_ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: Object, var_ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: Object, var_class: Object) =
        s"""
        | {
        | "ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl":$var_ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl,"ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl":$var_ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl,"class":$var_class
        | }
        """.stripMargin
}
