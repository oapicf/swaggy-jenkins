package org.openapitools.server.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.server.model.CauseAction;
import org.openapitools.server.model.FreeStyleProject;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class QueueBlockedItem   {

    private String propertyClass;
    private List<@Valid CauseAction> actions = new ArrayList<>();
    private Boolean blocked;
    private Boolean buildable;
    private Integer id;
    private Integer inQueueSince;
    private String params;
    private Boolean stuck;
    private FreeStyleProject task;
    private String url;
    private String why;
    private Integer buildableStartMilliseconds;

    /**
     * Default constructor.
     */
    public QueueBlockedItem() {
    // JSON-B / Jackson
    }

    /**
     * Create QueueBlockedItem.
     *
     * @param propertyClass propertyClass
     * @param actions actions
     * @param blocked blocked
     * @param buildable buildable
     * @param id id
     * @param inQueueSince inQueueSince
     * @param params params
     * @param stuck stuck
     * @param task task
     * @param url url
     * @param why why
     * @param buildableStartMilliseconds buildableStartMilliseconds
     */
    public QueueBlockedItem(
        String propertyClass, 
        List<@Valid CauseAction> actions, 
        Boolean blocked, 
        Boolean buildable, 
        Integer id, 
        Integer inQueueSince, 
        String params, 
        Boolean stuck, 
        FreeStyleProject task, 
        String url, 
        String why, 
        Integer buildableStartMilliseconds
    ) {
        this.propertyClass = propertyClass;
        this.actions = actions;
        this.blocked = blocked;
        this.buildable = buildable;
        this.id = id;
        this.inQueueSince = inQueueSince;
        this.params = params;
        this.stuck = stuck;
        this.task = task;
        this.url = url;
        this.why = why;
        this.buildableStartMilliseconds = buildableStartMilliseconds;
    }



    /**
     * Get propertyClass
     * @return propertyClass
     */
    public String getPropertyClass() {
        return propertyClass;
    }

    public void setPropertyClass(String propertyClass) {
        this.propertyClass = propertyClass;
    }

    /**
     * Get actions
     * @return actions
     */
    public List<@Valid CauseAction> getActions() {
        return actions;
    }

    public void setActions(List<@Valid CauseAction> actions) {
        this.actions = actions;
    }

    /**
     * Get blocked
     * @return blocked
     */
    public Boolean getBlocked() {
        return blocked;
    }

    public void setBlocked(Boolean blocked) {
        this.blocked = blocked;
    }

    /**
     * Get buildable
     * @return buildable
     */
    public Boolean getBuildable() {
        return buildable;
    }

    public void setBuildable(Boolean buildable) {
        this.buildable = buildable;
    }

    /**
     * Get id
     * @return id
     */
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * Get inQueueSince
     * @return inQueueSince
     */
    public Integer getInQueueSince() {
        return inQueueSince;
    }

    public void setInQueueSince(Integer inQueueSince) {
        this.inQueueSince = inQueueSince;
    }

    /**
     * Get params
     * @return params
     */
    public String getParams() {
        return params;
    }

    public void setParams(String params) {
        this.params = params;
    }

    /**
     * Get stuck
     * @return stuck
     */
    public Boolean getStuck() {
        return stuck;
    }

    public void setStuck(Boolean stuck) {
        this.stuck = stuck;
    }

    /**
     * Get task
     * @return task
     */
    public FreeStyleProject getTask() {
        return task;
    }

    public void setTask(FreeStyleProject task) {
        this.task = task;
    }

    /**
     * Get url
     * @return url
     */
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * Get why
     * @return why
     */
    public String getWhy() {
        return why;
    }

    public void setWhy(String why) {
        this.why = why;
    }

    /**
     * Get buildableStartMilliseconds
     * @return buildableStartMilliseconds
     */
    public Integer getBuildableStartMilliseconds() {
        return buildableStartMilliseconds;
    }

    public void setBuildableStartMilliseconds(Integer buildableStartMilliseconds) {
        this.buildableStartMilliseconds = buildableStartMilliseconds;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class QueueBlockedItem {\n");
        
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
        sb.append("    buildableStartMilliseconds: ").append(toIndentedString(buildableStartMilliseconds)).append("\n");
        sb.append("}");
        return sb.toString();
    }

    /**
     * Convert the given object to string with each line indented by 4 spaces
     * (except the first line).
    */
    private static String toIndentedString(Object o) {
        return o == null ? "null" : o.toString().replace("\n", "\n    ");
    }
}

