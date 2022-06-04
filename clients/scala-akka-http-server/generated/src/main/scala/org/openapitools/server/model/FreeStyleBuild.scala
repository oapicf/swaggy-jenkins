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
  `class`: Option[String] = None,
  number: Option[Int] = None,
  url: Option[String] = None,
  actions: Option[Seq[CauseAction]] = None,
  building: Option[Boolean] = None,
  description: Option[String] = None,
  displayName: Option[String] = None,
  duration: Option[Int] = None,
  estimatedDuration: Option[Int] = None,
  executor: Option[String] = None,
  fullDisplayName: Option[String] = None,
  id: Option[String] = None,
  keepLog: Option[Boolean] = None,
  queueId: Option[Int] = None,
  result: Option[String] = None,
  timestamp: Option[Int] = None,
  builtOn: Option[String] = None,
  changeSet: Option[EmptyChangeLogSet] = None
)

