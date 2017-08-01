package apimodels;

import java.util.Objects;
import apimodels.HudsonmodelAllView;
import apimodels.HudsonmodelFreeStyleProject;
import apimodels.HudsonmodelHudsonassignedLabels;
import apimodels.JenkinsmodelUnlabeledLoadStatistics;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.*;
/**
 * HudsonmodelHudson
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

public class HudsonmodelHudson   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("assignedLabels")
  private List<HudsonmodelHudsonassignedLabels> assignedLabels = null;

  @JsonProperty("mode")
  private String mode = null;

  @JsonProperty("nodeDescription")
  private String nodeDescription = null;

  @JsonProperty("nodeName")
  private String nodeName = null;

  @JsonProperty("numExecutors")
  private Integer numExecutors = null;

  @JsonProperty("description")
  private String description = null;

  @JsonProperty("jobs")
  private List<HudsonmodelFreeStyleProject> jobs = null;

  @JsonProperty("primaryView")
  private HudsonmodelAllView primaryView = null;

  @JsonProperty("quietingDown")
  private Boolean quietingDown = null;

  @JsonProperty("slaveAgentPort")
  private Integer slaveAgentPort = null;

  @JsonProperty("unlabeledLoad")
  private JenkinsmodelUnlabeledLoadStatistics unlabeledLoad = null;

  @JsonProperty("useCrumbs")
  private Boolean useCrumbs = null;

  @JsonProperty("useSecurity")
  private Boolean useSecurity = null;

  @JsonProperty("views")
  private List<HudsonmodelAllView> views = null;

  public HudsonmodelHudson propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
    public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public HudsonmodelHudson assignedLabels(List<HudsonmodelHudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
    return this;
  }

  public HudsonmodelHudson addAssignedLabelsItem(HudsonmodelHudsonassignedLabels assignedLabelsItem) {
    if (this.assignedLabels == null) {
      this.assignedLabels = new ArrayList<HudsonmodelHudsonassignedLabels>();
    }
    this.assignedLabels.add(assignedLabelsItem);
    return this;
  }

   /**
   * Get assignedLabels
   * @return assignedLabels
  **/
    public List<HudsonmodelHudsonassignedLabels> getAssignedLabels() {
    return assignedLabels;
  }

  public void setAssignedLabels(List<HudsonmodelHudsonassignedLabels> assignedLabels) {
    this.assignedLabels = assignedLabels;
  }

  public HudsonmodelHudson mode(String mode) {
    this.mode = mode;
    return this;
  }

   /**
   * Get mode
   * @return mode
  **/
    public String getMode() {
    return mode;
  }

  public void setMode(String mode) {
    this.mode = mode;
  }

  public HudsonmodelHudson nodeDescription(String nodeDescription) {
    this.nodeDescription = nodeDescription;
    return this;
  }

   /**
   * Get nodeDescription
   * @return nodeDescription
  **/
    public String getNodeDescription() {
    return nodeDescription;
  }

  public void setNodeDescription(String nodeDescription) {
    this.nodeDescription = nodeDescription;
  }

  public HudsonmodelHudson nodeName(String nodeName) {
    this.nodeName = nodeName;
    return this;
  }

   /**
   * Get nodeName
   * @return nodeName
  **/
    public String getNodeName() {
    return nodeName;
  }

  public void setNodeName(String nodeName) {
    this.nodeName = nodeName;
  }

  public HudsonmodelHudson numExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
    return this;
  }

   /**
   * Get numExecutors
   * @return numExecutors
  **/
    public Integer getNumExecutors() {
    return numExecutors;
  }

  public void setNumExecutors(Integer numExecutors) {
    this.numExecutors = numExecutors;
  }

  public HudsonmodelHudson description(String description) {
    this.description = description;
    return this;
  }

   /**
   * Get description
   * @return description
  **/
    public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public HudsonmodelHudson jobs(List<HudsonmodelFreeStyleProject> jobs) {
    this.jobs = jobs;
    return this;
  }

  public HudsonmodelHudson addJobsItem(HudsonmodelFreeStyleProject jobsItem) {
    if (this.jobs == null) {
      this.jobs = new ArrayList<HudsonmodelFreeStyleProject>();
    }
    this.jobs.add(jobsItem);
    return this;
  }

   /**
   * Get jobs
   * @return jobs
  **/
    public List<HudsonmodelFreeStyleProject> getJobs() {
    return jobs;
  }

  public void setJobs(List<HudsonmodelFreeStyleProject> jobs) {
    this.jobs = jobs;
  }

  public HudsonmodelHudson primaryView(HudsonmodelAllView primaryView) {
    this.primaryView = primaryView;
    return this;
  }

   /**
   * Get primaryView
   * @return primaryView
  **/
    public HudsonmodelAllView getPrimaryView() {
    return primaryView;
  }

  public void setPrimaryView(HudsonmodelAllView primaryView) {
    this.primaryView = primaryView;
  }

  public HudsonmodelHudson quietingDown(Boolean quietingDown) {
    this.quietingDown = quietingDown;
    return this;
  }

   /**
   * Get quietingDown
   * @return quietingDown
  **/
    public Boolean getQuietingDown() {
    return quietingDown;
  }

  public void setQuietingDown(Boolean quietingDown) {
    this.quietingDown = quietingDown;
  }

  public HudsonmodelHudson slaveAgentPort(Integer slaveAgentPort) {
    this.slaveAgentPort = slaveAgentPort;
    return this;
  }

   /**
   * Get slaveAgentPort
   * @return slaveAgentPort
  **/
    public Integer getSlaveAgentPort() {
    return slaveAgentPort;
  }

  public void setSlaveAgentPort(Integer slaveAgentPort) {
    this.slaveAgentPort = slaveAgentPort;
  }

  public HudsonmodelHudson unlabeledLoad(JenkinsmodelUnlabeledLoadStatistics unlabeledLoad) {
    this.unlabeledLoad = unlabeledLoad;
    return this;
  }

   /**
   * Get unlabeledLoad
   * @return unlabeledLoad
  **/
    public JenkinsmodelUnlabeledLoadStatistics getUnlabeledLoad() {
    return unlabeledLoad;
  }

  public void setUnlabeledLoad(JenkinsmodelUnlabeledLoadStatistics unlabeledLoad) {
    this.unlabeledLoad = unlabeledLoad;
  }

  public HudsonmodelHudson useCrumbs(Boolean useCrumbs) {
    this.useCrumbs = useCrumbs;
    return this;
  }

   /**
   * Get useCrumbs
   * @return useCrumbs
  **/
    public Boolean getUseCrumbs() {
    return useCrumbs;
  }

  public void setUseCrumbs(Boolean useCrumbs) {
    this.useCrumbs = useCrumbs;
  }

  public HudsonmodelHudson useSecurity(Boolean useSecurity) {
    this.useSecurity = useSecurity;
    return this;
  }

   /**
   * Get useSecurity
   * @return useSecurity
  **/
    public Boolean getUseSecurity() {
    return useSecurity;
  }

  public void setUseSecurity(Boolean useSecurity) {
    this.useSecurity = useSecurity;
  }

  public HudsonmodelHudson views(List<HudsonmodelAllView> views) {
    this.views = views;
    return this;
  }

  public HudsonmodelHudson addViewsItem(HudsonmodelAllView viewsItem) {
    if (this.views == null) {
      this.views = new ArrayList<HudsonmodelAllView>();
    }
    this.views.add(viewsItem);
    return this;
  }

   /**
   * Get views
   * @return views
  **/
    public List<HudsonmodelAllView> getViews() {
    return views;
  }

  public void setViews(List<HudsonmodelAllView> views) {
    this.views = views;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HudsonmodelHudson hudsonmodelHudson = (HudsonmodelHudson) o;
    return Objects.equals(this.propertyClass, hudsonmodelHudson.propertyClass) &&
        Objects.equals(this.assignedLabels, hudsonmodelHudson.assignedLabels) &&
        Objects.equals(this.mode, hudsonmodelHudson.mode) &&
        Objects.equals(this.nodeDescription, hudsonmodelHudson.nodeDescription) &&
        Objects.equals(this.nodeName, hudsonmodelHudson.nodeName) &&
        Objects.equals(this.numExecutors, hudsonmodelHudson.numExecutors) &&
        Objects.equals(this.description, hudsonmodelHudson.description) &&
        Objects.equals(this.jobs, hudsonmodelHudson.jobs) &&
        Objects.equals(this.primaryView, hudsonmodelHudson.primaryView) &&
        Objects.equals(this.quietingDown, hudsonmodelHudson.quietingDown) &&
        Objects.equals(this.slaveAgentPort, hudsonmodelHudson.slaveAgentPort) &&
        Objects.equals(this.unlabeledLoad, hudsonmodelHudson.unlabeledLoad) &&
        Objects.equals(this.useCrumbs, hudsonmodelHudson.useCrumbs) &&
        Objects.equals(this.useSecurity, hudsonmodelHudson.useSecurity) &&
        Objects.equals(this.views, hudsonmodelHudson.views);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, assignedLabels, mode, nodeDescription, nodeName, numExecutors, description, jobs, primaryView, quietingDown, slaveAgentPort, unlabeledLoad, useCrumbs, useSecurity, views);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonmodelHudson {\n");
    
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

