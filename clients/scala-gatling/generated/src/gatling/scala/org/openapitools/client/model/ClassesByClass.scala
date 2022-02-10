
package org.openapitools.client.model


case class ClassesByClass (
    _classes: Option[List[String]],
    _class: Option[String]
)
object ClassesByClass {
    def toStringBody(var_classes: Object, var_class: Object) =
        s"""
        | {
        | "classes":$var_classes,"class":$var_class
        | }
        """.stripMargin
}
