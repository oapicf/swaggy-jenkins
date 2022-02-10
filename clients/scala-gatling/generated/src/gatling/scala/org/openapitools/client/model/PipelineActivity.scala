
package org.openapitools.client.model


case class PipelineActivity (
    _class: Option[String],
    _artifacts: Option[List[PipelineActivityartifacts]],
    _durationInMillis: Option[Integer],
    _estimatedDurationInMillis: Option[Integer],
    _enQueueTime: Option[String],
    _endTime: Option[String],
    _id: Option[String],
    _organization: Option[String],
    _pipeline: Option[String],
    _result: Option[String],
    _runSummary: Option[String],
    _startTime: Option[String],
    _state: Option[String],
    _type: Option[String],
    _commitId: Option[String]
)
object PipelineActivity {
    def toStringBody(var_class: Object, var_artifacts: Object, var_durationInMillis: Object, var_estimatedDurationInMillis: Object, var_enQueueTime: Object, var_endTime: Object, var_id: Object, var_organization: Object, var_pipeline: Object, var_result: Object, var_runSummary: Object, var_startTime: Object, var_state: Object, var_type: Object, var_commitId: Object) =
        s"""
        | {
        | "class":$var_class,"artifacts":$var_artifacts,"durationInMillis":$var_durationInMillis,"estimatedDurationInMillis":$var_estimatedDurationInMillis,"enQueueTime":$var_enQueueTime,"endTime":$var_endTime,"id":$var_id,"organization":$var_organization,"pipeline":$var_pipeline,"result":$var_result,"runSummary":$var_runSummary,"startTime":$var_startTime,"state":$var_state,"type":$var_type,"commitId":$var_commitId
        | }
        """.stripMargin
}
