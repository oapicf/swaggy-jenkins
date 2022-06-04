package org.openapitools.server.model


/**
 * @param `class`  for example: ''null''
 * @param timestamp  for example: ''null''
 * @param path  for example: ''null''
 * @param size  for example: ''null''
*/
final case class DiskSpaceMonitorDescriptorDiskSpace (
  `class`: Option[String] = None,
  timestamp: Option[Int] = None,
  path: Option[String] = None,
  size: Option[Int] = None
)

