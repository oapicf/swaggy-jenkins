package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param timestamp  for example: ''null''
 * @param path  for example: ''null''
 * @param size  for example: ''null''
*/
final case class DiskSpaceMonitorDescriptorDiskSpace (
  `class`: Option[String],
  timestamp: Option[Int],
  path: Option[String],
  size: Option[Int]
)

