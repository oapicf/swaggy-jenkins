package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class QueueItemImpl {
    String propertyClass = null

    Integer expectedBuildNumber = null

    String id = null

    String pipeline = null

    Integer queuedTime = null

}
