package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param number  for example: ''null''
 * @param url  for example: ''null''
 * @param actions  for example: ''null''
 * @param building  for example: ''null''
 * @param description  for example: ''null''
 * @param displayName  for example: ''null''
 * @param duration  for example: ''null''
 * @param estimatedDuration  for example: ''null''
 * @param executor  for example: ''null''
 * @param fullDisplayName  for example: ''null''
 * @param id  for example: ''null''
 * @param keepLog  for example: ''null''
 * @param queueId  for example: ''null''
 * @param result  for example: ''null''
 * @param timestamp  for example: ''null''
 * @param builtOn  for example: ''null''
 * @param changeSet  for example: ''null''
*/
final case class FreeStyleBuild (
  `class`: Option[String],
  number: Option[Int],
  url: Option[String],
  actions: Option[Seq[CauseAction]],
  building: Option[Boolean],
  description: Option[String],
  displayName: Option[String],
  duration: Option[Int],
  estimatedDuration: Option[Int],
  executor: Option[String],
  fullDisplayName: Option[String],
  id: Option[String],
  keepLog: Option[Boolean],
  queueId: Option[Int],
  result: Option[String],
  timestamp: Option[Int],
  builtOn: Option[String],
  changeSet: Option[EmptyChangeLogSet]
)

