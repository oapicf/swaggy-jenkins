/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.model;

import java.util.Objects;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.CauseAction;
import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProject;
import com.fasterxml.jackson.annotation.*;

import javax.validation.constraints.*;
import javax.validation.Valid;
import io.micronaut.core.annotation.*;
import javax.annotation.Generated;

/**
 * QueueLeftItem
 */
@JsonPropertyOrder({
  QueueLeftItem.JSON_PROPERTY_PROPERTY_CLASS,
  QueueLeftItem.JSON_PROPERTY_ACTIONS,
  QueueLeftItem.JSON_PROPERTY_BLOCKED,
  QueueLeftItem.JSON_PROPERTY_BUILDABLE,
  QueueLeftItem.JSON_PROPERTY_ID,
  QueueLeftItem.JSON_PROPERTY_IN_QUEUE_SINCE,
  QueueLeftItem.JSON_PROPERTY_PARAMS,
  QueueLeftItem.JSON_PROPERTY_STUCK,
  QueueLeftItem.JSON_PROPERTY_TASK,
  QueueLeftItem.JSON_PROPERTY_URL,
  QueueLeftItem.JSON_PROPERTY_WHY,
  QueueLeftItem.JSON_PROPERTY_CANCELLED,
  QueueLeftItem.JSON_PROPERTY_EXECUTABLE
})
@JsonTypeName("QueueLeftItem")
@Generated(value="org.openapitools.codegen.languages.JavaMicronautClientCodegen", date="2022-06-04T08:08:17.621469Z[Etc/UTC]")
@Introspected
public class QueueLeftItem {
    public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
    private String propertyClass;

    public static final String JSON_PROPERTY_ACTIONS = "actions";
    private List<CauseAction> actions = null;

    public static final String JSON_PROPERTY_BLOCKED = "blocked";
    private Boolean blocked;

    public static final String JSON_PROPERTY_BUILDABLE = "buildable";
    private Boolean buildable;

    public static final String JSON_PROPERTY_ID = "id";
    private Integer id;

    public static final String JSON_PROPERTY_IN_QUEUE_SINCE = "inQueueSince";
    private Integer inQueueSince;

    public static final String JSON_PROPERTY_PARAMS = "params";
    private String params;

    public static final String JSON_PROPERTY_STUCK = "stuck";
    private Boolean stuck;

    public static final String JSON_PROPERTY_TASK = "task";
    private FreeStyleProject task;

    public static final String JSON_PROPERTY_URL = "url";
    private String url;

    public static final String JSON_PROPERTY_WHY = "why";
    private String why;

    public static final String JSON_PROPERTY_CANCELLED = "cancelled";
    private Boolean cancelled;

    public static final String JSON_PROPERTY_EXECUTABLE = "executable";
    private FreeStyleBuild executable;

    public QueueLeftItem() {
    }

    public QueueLeftItem propertyClass(String propertyClass) {
        this.propertyClass = propertyClass;
        return this;
    }

    /**
     * Get propertyClass
     * @return propertyClass
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_PROPERTY_CLASS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getPropertyClass() {
        return propertyClass;
    }

    @JsonProperty(JSON_PROPERTY_PROPERTY_CLASS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setPropertyClass(String propertyClass) {
        this.propertyClass = propertyClass;
    }

    public QueueLeftItem actions(List<CauseAction> actions) {
        this.actions = actions;
        return this;
    }

    public QueueLeftItem addActionsItem(CauseAction actionsItem) {
        if (this.actions == null) {
            this.actions = new ArrayList<>();
        }
        this.actions.add(actionsItem);
        return this;
    }

    /**
     * Get actions
     * @return actions
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_ACTIONS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public List<CauseAction> getActions() {
        return actions;
    }

    @JsonProperty(JSON_PROPERTY_ACTIONS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setActions(List<CauseAction> actions) {
        this.actions = actions;
    }

    public QueueLeftItem blocked(Boolean blocked) {
        this.blocked = blocked;
        return this;
    }

    /**
     * Get blocked
     * @return blocked
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_BLOCKED)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Boolean getBlocked() {
        return blocked;
    }

    @JsonProperty(JSON_PROPERTY_BLOCKED)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setBlocked(Boolean blocked) {
        this.blocked = blocked;
    }

    public QueueLeftItem buildable(Boolean buildable) {
        this.buildable = buildable;
        return this;
    }

    /**
     * Get buildable
     * @return buildable
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_BUILDABLE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Boolean getBuildable() {
        return buildable;
    }

    @JsonProperty(JSON_PROPERTY_BUILDABLE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setBuildable(Boolean buildable) {
        this.buildable = buildable;
    }

    public QueueLeftItem id(Integer id) {
        this.id = id;
        return this;
    }

    /**
     * Get id
     * @return id
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_ID)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Integer getId() {
        return id;
    }

    @JsonProperty(JSON_PROPERTY_ID)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setId(Integer id) {
        this.id = id;
    }

    public QueueLeftItem inQueueSince(Integer inQueueSince) {
        this.inQueueSince = inQueueSince;
        return this;
    }

    /**
     * Get inQueueSince
     * @return inQueueSince
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_IN_QUEUE_SINCE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Integer getInQueueSince() {
        return inQueueSince;
    }

    @JsonProperty(JSON_PROPERTY_IN_QUEUE_SINCE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setInQueueSince(Integer inQueueSince) {
        this.inQueueSince = inQueueSince;
    }

    public QueueLeftItem params(String params) {
        this.params = params;
        return this;
    }

    /**
     * Get params
     * @return params
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_PARAMS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getParams() {
        return params;
    }

    @JsonProperty(JSON_PROPERTY_PARAMS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setParams(String params) {
        this.params = params;
    }

    public QueueLeftItem stuck(Boolean stuck) {
        this.stuck = stuck;
        return this;
    }

    /**
     * Get stuck
     * @return stuck
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_STUCK)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Boolean getStuck() {
        return stuck;
    }

    @JsonProperty(JSON_PROPERTY_STUCK)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setStuck(Boolean stuck) {
        this.stuck = stuck;
    }

    public QueueLeftItem task(FreeStyleProject task) {
        this.task = task;
        return this;
    }

    /**
     * Get task
     * @return task
     **/
    @Valid
    @Nullable
    @JsonProperty(JSON_PROPERTY_TASK)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public FreeStyleProject getTask() {
        return task;
    }

    @JsonProperty(JSON_PROPERTY_TASK)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setTask(FreeStyleProject task) {
        this.task = task;
    }

    public QueueLeftItem url(String url) {
        this.url = url;
        return this;
    }

    /**
     * Get url
     * @return url
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_URL)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getUrl() {
        return url;
    }

    @JsonProperty(JSON_PROPERTY_URL)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setUrl(String url) {
        this.url = url;
    }

    public QueueLeftItem why(String why) {
        this.why = why;
        return this;
    }

    /**
     * Get why
     * @return why
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_WHY)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getWhy() {
        return why;
    }

    @JsonProperty(JSON_PROPERTY_WHY)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setWhy(String why) {
        this.why = why;
    }

    public QueueLeftItem cancelled(Boolean cancelled) {
        this.cancelled = cancelled;
        return this;
    }

    /**
     * Get cancelled
     * @return cancelled
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_CANCELLED)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Boolean getCancelled() {
        return cancelled;
    }

    @JsonProperty(JSON_PROPERTY_CANCELLED)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setCancelled(Boolean cancelled) {
        this.cancelled = cancelled;
    }

    public QueueLeftItem executable(FreeStyleBuild executable) {
        this.executable = executable;
        return this;
    }

    /**
     * Get executable
     * @return executable
     **/
    @Valid
    @Nullable
    @JsonProperty(JSON_PROPERTY_EXECUTABLE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public FreeStyleBuild getExecutable() {
        return executable;
    }

    @JsonProperty(JSON_PROPERTY_EXECUTABLE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setExecutable(FreeStyleBuild executable) {
        this.executable = executable;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        QueueLeftItem queueLeftItem = (QueueLeftItem) o;
        return Objects.equals(this.propertyClass, queueLeftItem.propertyClass) &&
            Objects.equals(this.actions, queueLeftItem.actions) &&
            Objects.equals(this.blocked, queueLeftItem.blocked) &&
            Objects.equals(this.buildable, queueLeftItem.buildable) &&
            Objects.equals(this.id, queueLeftItem.id) &&
            Objects.equals(this.inQueueSince, queueLeftItem.inQueueSince) &&
            Objects.equals(this.params, queueLeftItem.params) &&
            Objects.equals(this.stuck, queueLeftItem.stuck) &&
            Objects.equals(this.task, queueLeftItem.task) &&
            Objects.equals(this.url, queueLeftItem.url) &&
            Objects.equals(this.why, queueLeftItem.why) &&
            Objects.equals(this.cancelled, queueLeftItem.cancelled) &&
            Objects.equals(this.executable, queueLeftItem.executable);
    }

    @Override
    public int hashCode() {
        return Objects.hash(propertyClass, actions, blocked, buildable, id, inQueueSince, params, stuck, task, url, why, cancelled, executable);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class QueueLeftItem {\n");
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
    private String toIndentedString(Object o) {
        if (o == null) {
            return "null";
        }
        return o.toString().replace("\n", "\n    ");
    }

}
