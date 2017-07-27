package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ArrayList;
import io.swagger.model.SwaggyjenkinsPipelineLatestRunartifacts;
import java.util.List;
@Canonical
class SwaggyjenkinsPipelineLatestRun {

    List<SwaggyjenkinsPipelineLatestRunartifacts> artifacts = new ArrayList<SwaggyjenkinsPipelineLatestRunartifacts>()

    Integer durationInMillis = null

    Integer estimatedDurationInMillis = null

    String enQueueTime = null

    String endTime = null

    String id = null

    String organization = null

    String pipeline = null

    String result = null

    String runSummary = null

    String startTime = null

    String state = null

    String type = null

    String commitId = null

    String propertyClass = null
  

}

