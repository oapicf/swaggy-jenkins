package org.openapitools.server.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.server.model.CauseAction;
import org.openapitools.server.model.EmptyChangeLogSet;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class FreeStyleBuild   {

    private String propertyClass;
    private Integer number;
    private String url;
    private List<@Valid CauseAction> actions = new ArrayList<>();
    private Boolean building;
    private String description;
    private String displayName;
    private Integer duration;
    private Integer estimatedDuration;
    private String executor;
    private String fullDisplayName;
    private String id;
    private Boolean keepLog;
    private Integer queueId;
    private String result;
    private Integer timestamp;
    private String builtOn;
    private EmptyChangeLogSet changeSet;

    /**
     * Default constructor.
     */
    public FreeStyleBuild() {
    // JSON-B / Jackson
    }

    /**
     * Create FreeStyleBuild.
     *
     * @param propertyClass propertyClass
     * @param number number
     * @param url url
     * @param actions actions
     * @param building building
     * @param description description
     * @param displayName displayName
     * @param duration duration
     * @param estimatedDuration estimatedDuration
     * @param executor executor
     * @param fullDisplayName fullDisplayName
     * @param id id
     * @param keepLog keepLog
     * @param queueId queueId
     * @param result result
     * @param timestamp timestamp
     * @param builtOn builtOn
     * @param changeSet changeSet
     */
    public FreeStyleBuild(
        String propertyClass, 
        Integer number, 
        String url, 
        List<@Valid CauseAction> actions, 
        Boolean building, 
        String description, 
        String displayName, 
        Integer duration, 
        Integer estimatedDuration, 
        String executor, 
        String fullDisplayName, 
        String id, 
        Boolean keepLog, 
        Integer queueId, 
        String result, 
        Integer timestamp, 
        String builtOn, 
        EmptyChangeLogSet changeSet
    ) {
        this.propertyClass = propertyClass;
        this.number = number;
        this.url = url;
        this.actions = actions;
        this.building = building;
        this.description = description;
        this.displayName = displayName;
        this.duration = duration;
        this.estimatedDuration = estimatedDuration;
        this.executor = executor;
        this.fullDisplayName = fullDisplayName;
        this.id = id;
        this.keepLog = keepLog;
        this.queueId = queueId;
        this.result = result;
        this.timestamp = timestamp;
        this.builtOn = builtOn;
        this.changeSet = changeSet;
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
     * Get number
     * @return number
     */
    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
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
     * Get building
     * @return building
     */
    public Boolean getBuilding() {
        return building;
    }

    public void setBuilding(Boolean building) {
        this.building = building;
    }

    /**
     * Get description
     * @return description
     */
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * Get displayName
     * @return displayName
     */
    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    /**
     * Get duration
     * @return duration
     */
    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    /**
     * Get estimatedDuration
     * @return estimatedDuration
     */
    public Integer getEstimatedDuration() {
        return estimatedDuration;
    }

    public void setEstimatedDuration(Integer estimatedDuration) {
        this.estimatedDuration = estimatedDuration;
    }

    /**
     * Get executor
     * @return executor
     */
    public String getExecutor() {
        return executor;
    }

    public void setExecutor(String executor) {
        this.executor = executor;
    }

    /**
     * Get fullDisplayName
     * @return fullDisplayName
     */
    public String getFullDisplayName() {
        return fullDisplayName;
    }

    public void setFullDisplayName(String fullDisplayName) {
        this.fullDisplayName = fullDisplayName;
    }

    /**
     * Get id
     * @return id
     */
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    /**
     * Get keepLog
     * @return keepLog
     */
    public Boolean getKeepLog() {
        return keepLog;
    }

    public void setKeepLog(Boolean keepLog) {
        this.keepLog = keepLog;
    }

    /**
     * Get queueId
     * @return queueId
     */
    public Integer getQueueId() {
        return queueId;
    }

    public void setQueueId(Integer queueId) {
        this.queueId = queueId;
    }

    /**
     * Get result
     * @return result
     */
    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    /**
     * Get timestamp
     * @return timestamp
     */
    public Integer getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Integer timestamp) {
        this.timestamp = timestamp;
    }

    /**
     * Get builtOn
     * @return builtOn
     */
    public String getBuiltOn() {
        return builtOn;
    }

    public void setBuiltOn(String builtOn) {
        this.builtOn = builtOn;
    }

    /**
     * Get changeSet
     * @return changeSet
     */
    public EmptyChangeLogSet getChangeSet() {
        return changeSet;
    }

    public void setChangeSet(EmptyChangeLogSet changeSet) {
        this.changeSet = changeSet;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class FreeStyleBuild {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    number: ").append(toIndentedString(number)).append("\n");
        sb.append("    url: ").append(toIndentedString(url)).append("\n");
        sb.append("    actions: ").append(toIndentedString(actions)).append("\n");
        sb.append("    building: ").append(toIndentedString(building)).append("\n");
        sb.append("    description: ").append(toIndentedString(description)).append("\n");
        sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
        sb.append("    duration: ").append(toIndentedString(duration)).append("\n");
        sb.append("    estimatedDuration: ").append(toIndentedString(estimatedDuration)).append("\n");
        sb.append("    executor: ").append(toIndentedString(executor)).append("\n");
        sb.append("    fullDisplayName: ").append(toIndentedString(fullDisplayName)).append("\n");
        sb.append("    id: ").append(toIndentedString(id)).append("\n");
        sb.append("    keepLog: ").append(toIndentedString(keepLog)).append("\n");
        sb.append("    queueId: ").append(toIndentedString(queueId)).append("\n");
        sb.append("    result: ").append(toIndentedString(result)).append("\n");
        sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
        sb.append("    builtOn: ").append(toIndentedString(builtOn)).append("\n");
        sb.append("    changeSet: ").append(toIndentedString(changeSet)).append("\n");
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

