package apimodels;

import java.util.Objects;
import apimodels.HudsonmodelCauseAction;
import apimodels.HudsonmodelFreeStyleBuild;
import apimodels.HudsonmodelFreeStyleProject;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.*;
/**
 * HudsonmodelQueueLeftItem
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

public class HudsonmodelQueueLeftItem   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("actions")
  private List<HudsonmodelCauseAction> actions = null;

  @JsonProperty("blocked")
  private Boolean blocked = null;

  @JsonProperty("buildable")
  private Boolean buildable = null;

  @JsonProperty("id")
  private Integer id = null;

  @JsonProperty("inQueueSince")
  private Integer inQueueSince = null;

  @JsonProperty("params")
  private String params = null;

  @JsonProperty("stuck")
  private Boolean stuck = null;

  @JsonProperty("task")
  private HudsonmodelFreeStyleProject task = null;

  @JsonProperty("url")
  private String url = null;

  @JsonProperty("why")
  private String why = null;

  @JsonProperty("cancelled")
  private Boolean cancelled = null;

  @JsonProperty("executable")
  private HudsonmodelFreeStyleBuild executable = null;

  public HudsonmodelQueueLeftItem propertyClass(String propertyClass) {
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

  public HudsonmodelQueueLeftItem actions(List<HudsonmodelCauseAction> actions) {
    this.actions = actions;
    return this;
  }

  public HudsonmodelQueueLeftItem addActionsItem(HudsonmodelCauseAction actionsItem) {
    if (this.actions == null) {
      this.actions = new ArrayList<HudsonmodelCauseAction>();
    }
    this.actions.add(actionsItem);
    return this;
  }

   /**
   * Get actions
   * @return actions
  **/
    public List<HudsonmodelCauseAction> getActions() {
    return actions;
  }

  public void setActions(List<HudsonmodelCauseAction> actions) {
    this.actions = actions;
  }

  public HudsonmodelQueueLeftItem blocked(Boolean blocked) {
    this.blocked = blocked;
    return this;
  }

   /**
   * Get blocked
   * @return blocked
  **/
    public Boolean getBlocked() {
    return blocked;
  }

  public void setBlocked(Boolean blocked) {
    this.blocked = blocked;
  }

  public HudsonmodelQueueLeftItem buildable(Boolean buildable) {
    this.buildable = buildable;
    return this;
  }

   /**
   * Get buildable
   * @return buildable
  **/
    public Boolean getBuildable() {
    return buildable;
  }

  public void setBuildable(Boolean buildable) {
    this.buildable = buildable;
  }

  public HudsonmodelQueueLeftItem id(Integer id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
    public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public HudsonmodelQueueLeftItem inQueueSince(Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
    return this;
  }

   /**
   * Get inQueueSince
   * @return inQueueSince
  **/
    public Integer getInQueueSince() {
    return inQueueSince;
  }

  public void setInQueueSince(Integer inQueueSince) {
    this.inQueueSince = inQueueSince;
  }

  public HudsonmodelQueueLeftItem params(String params) {
    this.params = params;
    return this;
  }

   /**
   * Get params
   * @return params
  **/
    public String getParams() {
    return params;
  }

  public void setParams(String params) {
    this.params = params;
  }

  public HudsonmodelQueueLeftItem stuck(Boolean stuck) {
    this.stuck = stuck;
    return this;
  }

   /**
   * Get stuck
   * @return stuck
  **/
    public Boolean getStuck() {
    return stuck;
  }

  public void setStuck(Boolean stuck) {
    this.stuck = stuck;
  }

  public HudsonmodelQueueLeftItem task(HudsonmodelFreeStyleProject task) {
    this.task = task;
    return this;
  }

   /**
   * Get task
   * @return task
  **/
    public HudsonmodelFreeStyleProject getTask() {
    return task;
  }

  public void setTask(HudsonmodelFreeStyleProject task) {
    this.task = task;
  }

  public HudsonmodelQueueLeftItem url(String url) {
    this.url = url;
    return this;
  }

   /**
   * Get url
   * @return url
  **/
    public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public HudsonmodelQueueLeftItem why(String why) {
    this.why = why;
    return this;
  }

   /**
   * Get why
   * @return why
  **/
    public String getWhy() {
    return why;
  }

  public void setWhy(String why) {
    this.why = why;
  }

  public HudsonmodelQueueLeftItem cancelled(Boolean cancelled) {
    this.cancelled = cancelled;
    return this;
  }

   /**
   * Get cancelled
   * @return cancelled
  **/
    public Boolean getCancelled() {
    return cancelled;
  }

  public void setCancelled(Boolean cancelled) {
    this.cancelled = cancelled;
  }

  public HudsonmodelQueueLeftItem executable(HudsonmodelFreeStyleBuild executable) {
    this.executable = executable;
    return this;
  }

   /**
   * Get executable
   * @return executable
  **/
    public HudsonmodelFreeStyleBuild getExecutable() {
    return executable;
  }

  public void setExecutable(HudsonmodelFreeStyleBuild executable) {
    this.executable = executable;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HudsonmodelQueueLeftItem hudsonmodelQueueLeftItem = (HudsonmodelQueueLeftItem) o;
    return Objects.equals(this.propertyClass, hudsonmodelQueueLeftItem.propertyClass) &&
        Objects.equals(this.actions, hudsonmodelQueueLeftItem.actions) &&
        Objects.equals(this.blocked, hudsonmodelQueueLeftItem.blocked) &&
        Objects.equals(this.buildable, hudsonmodelQueueLeftItem.buildable) &&
        Objects.equals(this.id, hudsonmodelQueueLeftItem.id) &&
        Objects.equals(this.inQueueSince, hudsonmodelQueueLeftItem.inQueueSince) &&
        Objects.equals(this.params, hudsonmodelQueueLeftItem.params) &&
        Objects.equals(this.stuck, hudsonmodelQueueLeftItem.stuck) &&
        Objects.equals(this.task, hudsonmodelQueueLeftItem.task) &&
        Objects.equals(this.url, hudsonmodelQueueLeftItem.url) &&
        Objects.equals(this.why, hudsonmodelQueueLeftItem.why) &&
        Objects.equals(this.cancelled, hudsonmodelQueueLeftItem.cancelled) &&
        Objects.equals(this.executable, hudsonmodelQueueLeftItem.executable);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, actions, blocked, buildable, id, inQueueSince, params, stuck, task, url, why, cancelled, executable);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonmodelQueueLeftItem {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    actions: ").append(toIndentedString(actions)).append("\n");
    sb.append("    blocked: ").append(toIndentedString(blocked)).append("\n");
    sb.append("    buildable: ").append(toIndentedString(buildable)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    inQueueSince: ").append(toIndentedString(inQueueSince)).append("\n");
    sb.append("    params: ").append(toIndentedString(params)).append("\n");
    sb.append("    stuck: ").append(toIndentedString(stuck)).append("\n");
    sb.append("    task: ").append(toIndentedString(task)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
    sb.append("    why: ").append(toIndentedString(why)).append("\n");
    sb.append("    cancelled: ").append(toIndentedString(cancelled)).append("\n");
    sb.append("    executable: ").append(toIndentedString(executable)).append("\n");
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

