package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.AllView;
import org.openapitools.model.FreeStyleProject;
import org.openapitools.model.HudsonassignedLabels;
import org.openapitools.model.UnlabeledLoadStatistics;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import jakarta.annotation.Generated;

/**
 * Hudson
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-08-16T01:42:02.317096987Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class Hudson {

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String propertyClass;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private List<@Valid HudsonassignedLabels> assignedLabels = new ArrayList<>();

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String mode;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String nodeDescription;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String nodeName;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer numExecutors;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String description;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private List<@Valid FreeStyleProject> jobs = new ArrayList<>();

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable AllView primaryView;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Boolean quietingDown;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer slaveAgentPort;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable UnlabeledLoadStatistics unlabeledLoad;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Boolean useCrumbs;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Boolean useSecurity;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private List<@Valid AllView> views = new ArrayList<>();

  public Hudson propertyClass(@Nullable String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
   */
  
  @Schema(name = "_class", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("_class")
  public @Nullable String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
  public void setPropertyClass(@Nullable String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public Hudson assignedLabels(List<@Valid HudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
    return this;
  }

  public Hudson addAssignedLabelsItem(HudsonassignedLabels assignedLabelsItem) {
    if (this.assignedLabels == null) {
      this.assignedLabels = new ArrayList<>();
    }
    this.assignedLabels.add(assignedLabelsItem);
    return this;
  }

  /**
   * Get assignedLabels
   * @return assignedLabels
   */
  @Valid 
  @Schema(name = "assignedLabels", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("assignedLabels")
  public List<@Valid HudsonassignedLabels> getAssignedLabels() {
    return assignedLabels;
  }

  @JsonProperty("assignedLabels")
  public void setAssignedLabels(List<@Valid HudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
  }

  public Hudson mode(@Nullable String mode) {
    this.mode = mode;
    return this;
  }

  /**
   * Get mode
   * @return mode
   */
  
  @Schema(name = "mode", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("mode")
  public @Nullable String getMode() {
    return mode;
  }

  @JsonProperty("mode")
  public void setMode(@Nullable String mode) {
    this.mode = mode;
  }

  public Hudson nodeDescription(@Nullable String nodeDescription) {
    this.nodeDescription = nodeDescription;
    return this;
  }

  /**
   * Get nodeDescription
   * @return nodeDescription
   */
  
  @Schema(name = "nodeDescription", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("nodeDescription")
  public @Nullable String getNodeDescription() {
    return nodeDescription;
  }

  @JsonProperty("nodeDescription")
  public void setNodeDescription(@Nullable String nodeDescription) {
    this.nodeDescription = nodeDescription;
  }

  public Hudson nodeName(@Nullable String nodeName) {
    this.nodeName = nodeName;
    return this;
  }

  /**
   * Get nodeName
   * @return nodeName
   */
  
  @Schema(name = "nodeName", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("nodeName")
  public @Nullable String getNodeName() {
    return nodeName;
  }

  @JsonProperty("nodeName")
  public void setNodeName(@Nullable String nodeName) {
    this.nodeName = nodeName;
  }

  public Hudson numExecutors(@Nullable Integer numExecutors) {
    this.numExecutors = numExecutors;
    return this;
  }

  /**
   * Get numExecutors
   * @return numExecutors
   */
  
  @Schema(name = "numExecutors", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("numExecutors")
  public @Nullable Integer getNumExecutors() {
    return numExecutors;
  }

  @JsonProperty("numExecutors")
  public void setNumExecutors(@Nullable Integer numExecutors) {
    this.numExecutors = numExecutors;
  }

  public Hudson description(@Nullable String description) {
    this.description = description;
    return this;
  }

  /**
   * Get description
   * @return description
   */
  
  @Schema(name = "description", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("description")
  public @Nullable String getDescription() {
    return description;
  }

  @JsonProperty("description")
  public void setDescription(@Nullable String description) {
    this.description = description;
  }

  public Hudson jobs(List<@Valid FreeStyleProject> jobs) {
    this.jobs = jobs;
    return this;
  }

  public Hudson addJobsItem(FreeStyleProject jobsItem) {
    if (this.jobs == null) {
      this.jobs = new ArrayList<>();
    }
    this.jobs.add(jobsItem);
    return this;
  }

  /**
   * Get jobs
   * @return jobs
   */
  @Valid 
  @Schema(name = "jobs", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("jobs")
  public List<@Valid FreeStyleProject> getJobs() {
    return jobs;
  }

  @JsonProperty("jobs")
  public void setJobs(List<@Valid FreeStyleProject> jobs) {
    this.jobs = jobs;
  }

  public Hudson primaryView(@Nullable AllView primaryView) {
    this.primaryView = primaryView;
    return this;
  }

  /**
   * Get primaryView
   * @return primaryView
   */
  @Valid 
  @Schema(name = "primaryView", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("primaryView")
  public @Nullable AllView getPrimaryView() {
    return primaryView;
  }

  @JsonProperty("primaryView")
  public void setPrimaryView(@Nullable AllView primaryView) {
    this.primaryView = primaryView;
  }

  public Hudson quietingDown(@Nullable Boolean quietingDown) {
    this.quietingDown = quietingDown;
    return this;
  }

  /**
   * Get quietingDown
   * @return quietingDown
   */
  
  @Schema(name = "quietingDown", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("quietingDown")
  public @Nullable Boolean getQuietingDown() {
    return quietingDown;
  }

  @JsonProperty("quietingDown")
  public void setQuietingDown(@Nullable Boolean quietingDown) {
    this.quietingDown = quietingDown;
  }

  public Hudson slaveAgentPort(@Nullable Integer slaveAgentPort) {
    this.slaveAgentPort = slaveAgentPort;
    return this;
  }

  /**
   * Get slaveAgentPort
   * @return slaveAgentPort
   */
  
  @Schema(name = "slaveAgentPort", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("slaveAgentPort")
  public @Nullable Integer getSlaveAgentPort() {
    return slaveAgentPort;
  }

  @JsonProperty("slaveAgentPort")
  public void setSlaveAgentPort(@Nullable Integer slaveAgentPort) {
    this.slaveAgentPort = slaveAgentPort;
  }

  public Hudson unlabeledLoad(@Nullable UnlabeledLoadStatistics unlabeledLoad) {
    this.unlabeledLoad = unlabeledLoad;
    return this;
  }

  /**
   * Get unlabeledLoad
   * @return unlabeledLoad
   */
  @Valid 
  @Schema(name = "unlabeledLoad", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("unlabeledLoad")
  public @Nullable UnlabeledLoadStatistics getUnlabeledLoad() {
    return unlabeledLoad;
  }

  @JsonProperty("unlabeledLoad")
  public void setUnlabeledLoad(@Nullable UnlabeledLoadStatistics unlabeledLoad) {
    this.unlabeledLoad = unlabeledLoad;
  }

  public Hudson useCrumbs(@Nullable Boolean useCrumbs) {
    this.useCrumbs = useCrumbs;
    return this;
  }

  /**
   * Get useCrumbs
   * @return useCrumbs
   */
  
  @Schema(name = "useCrumbs", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("useCrumbs")
  public @Nullable Boolean getUseCrumbs() {
    return useCrumbs;
  }

  @JsonProperty("useCrumbs")
  public void setUseCrumbs(@Nullable Boolean useCrumbs) {
    this.useCrumbs = useCrumbs;
  }

  public Hudson useSecurity(@Nullable Boolean useSecurity) {
    this.useSecurity = useSecurity;
    return this;
  }

  /**
   * Get useSecurity
   * @return useSecurity
   */
  
  @Schema(name = "useSecurity", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("useSecurity")
  public @Nullable Boolean getUseSecurity() {
    return useSecurity;
  }

  @JsonProperty("useSecurity")
  public void setUseSecurity(@Nullable Boolean useSecurity) {
    this.useSecurity = useSecurity;
  }

  public Hudson views(List<@Valid AllView> views) {
    this.views = views;
    return this;
  }

  public Hudson addViewsItem(AllView viewsItem) {
    if (this.views == null) {
      this.views = new ArrayList<>();
    }
    this.views.add(viewsItem);
    return this;
  }

  /**
   * Get views
   * @return views
   */
  @Valid 
  @Schema(name = "views", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("views")
  public List<@Valid AllView> getViews() {
    return views;
  }

  @JsonProperty("views")
  public void setViews(List<@Valid AllView> views) {
    this.views = views;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Hudson hudson = (Hudson) o;
    return Objects.equals(this.propertyClass, hudson.propertyClass) &&
        Objects.equals(this.assignedLabels, hudson.assignedLabels) &&
        Objects.equals(this.mode, hudson.mode) &&
        Objects.equals(this.nodeDescription, hudson.nodeDescription) &&
        Objects.equals(this.nodeName, hudson.nodeName) &&
        Objects.equals(this.numExecutors, hudson.numExecutors) &&
        Objects.equals(this.description, hudson.description) &&
        Objects.equals(this.jobs, hudson.jobs) &&
        Objects.equals(this.primaryView, hudson.primaryView) &&
        Objects.equals(this.quietingDown, hudson.quietingDown) &&
        Objects.equals(this.slaveAgentPort, hudson.slaveAgentPort) &&
        Objects.equals(this.unlabeledLoad, hudson.unlabeledLoad) &&
        Objects.equals(this.useCrumbs, hudson.useCrumbs) &&
        Objects.equals(this.useSecurity, hudson.useSecurity) &&
        Objects.equals(this.views, hudson.views);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, assignedLabels, mode, nodeDescription, nodeName, numExecutors, description, jobs, primaryView, quietingDown, slaveAgentPort, unlabeledLoad, useCrumbs, useSecurity, views);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Hudson {\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    assignedLabels: ").append(toIndentedString(assignedLabels)).append("\n");
    sb.append("    mode: ").append(toIndentedString(mode)).append("\n");
    sb.append("    nodeDescription: ").append(toIndentedString(nodeDescription)).append("\n");
    sb.append("    nodeName: ").append(toIndentedString(nodeName)).append("\n");
    sb.append("    numExecutors: ").append(toIndentedString(numExecutors)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    jobs: ").append(toIndentedString(jobs)).append("\n");
    sb.append("    primaryView: ").append(toIndentedString(primaryView)).append("\n");
    sb.append("    quietingDown: ").append(toIndentedString(quietingDown)).append("\n");
    sb.append("    slaveAgentPort: ").append(toIndentedString(slaveAgentPort)).append("\n");
    sb.append("    unlabeledLoad: ").append(toIndentedString(unlabeledLoad)).append("\n");
    sb.append("    useCrumbs: ").append(toIndentedString(useCrumbs)).append("\n");
    sb.append("    useSecurity: ").append(toIndentedString(useSecurity)).append("\n");
    sb.append("    views: ").append(toIndentedString(views)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(@Nullable Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

