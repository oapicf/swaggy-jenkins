package org.openapitools.server.model;

import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class PipelineBranchesitemlatestRun   {

    private Integer durationInMillis;
    private Integer estimatedDurationInMillis;
    private String enQueueTime;
    private String endTime;
    private String id;
    private String organization;
    private String pipeline;
    private String result;
    private String runSummary;
    private String startTime;
    private String state;
    private String type;
    private String commitId;
    private String propertyClass;

    /**
     * Default constructor.
     */
    public PipelineBranchesitemlatestRun() {
    // JSON-B / Jackson
    }

    /**
     * Create PipelineBranchesitemlatestRun.
     *
     * @param durationInMillis durationInMillis
     * @param estimatedDurationInMillis estimatedDurationInMillis
     * @param enQueueTime enQueueTime
     * @param endTime endTime
     * @param id id
     * @param organization organization
     * @param pipeline pipeline
     * @param result result
     * @param runSummary runSummary
     * @param startTime startTime
     * @param state state
     * @param type type
     * @param commitId commitId
     * @param propertyClass propertyClass
     */
    public PipelineBranchesitemlatestRun(
        Integer durationInMillis, 
        Integer estimatedDurationInMillis, 
        String enQueueTime, 
        String endTime, 
        String id, 
        String organization, 
        String pipeline, 
        String result, 
        String runSummary, 
        String startTime, 
        String state, 
        String type, 
        String commitId, 
        String propertyClass
    ) {
        this.durationInMillis = durationInMillis;
        this.estimatedDurationInMillis = estimatedDurationInMillis;
        this.enQueueTime = enQueueTime;
        this.endTime = endTime;
        this.id = id;
        this.organization = organization;
        this.pipeline = pipeline;
        this.result = result;
        this.runSummary = runSummary;
        this.startTime = startTime;
        this.state = state;
        this.type = type;
        this.commitId = commitId;
        this.propertyClass = propertyClass;
    }



    /**
     * Get durationInMillis
     * @return durationInMillis
     */
    public Integer getDurationInMillis() {
        return durationInMillis;
    }

    public void setDurationInMillis(Integer durationInMillis) {
        this.durationInMillis = durationInMillis;
    }

    /**
     * Get estimatedDurationInMillis
     * @return estimatedDurationInMillis
     */
    public Integer getEstimatedDurationInMillis() {
        return estimatedDurationInMillis;
    }

    public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
        this.estimatedDurationInMillis = estimatedDurationInMillis;
    }

    /**
     * Get enQueueTime
     * @return enQueueTime
     */
    public String getEnQueueTime() {
        return enQueueTime;
    }

    public void setEnQueueTime(String enQueueTime) {
        this.enQueueTime = enQueueTime;
    }

    /**
     * Get endTime
     * @return endTime
     */
    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
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
     * Get organization
     * @return organization
     */
    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }

    /**
     * Get pipeline
     * @return pipeline
     */
    public String getPipeline() {
        return pipeline;
    }

    public void setPipeline(String pipeline) {
        this.pipeline = pipeline;
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
     * Get runSummary
     * @return runSummary
     */
    public String getRunSummary() {
        return runSummary;
    }

    public void setRunSummary(String runSummary) {
        this.runSummary = runSummary;
    }

    /**
     * Get startTime
     * @return startTime
     */
    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    /**
     * Get state
     * @return state
     */
    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    /**
     * Get type
     * @return type
     */
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    /**
     * Get commitId
     * @return commitId
     */
    public String getCommitId() {
        return commitId;
    }

    public void setCommitId(String commitId) {
        this.commitId = commitId;
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
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class PipelineBranchesitemlatestRun {\n");
        
        sb.append("    durationInMillis: ").append(toIndentedString(durationInMillis)).append("\n");
        sb.append("    estimatedDurationInMillis: ").append(toIndentedString(estimatedDurationInMillis)).append("\n");
        sb.append("    enQueueTime: ").append(toIndentedString(enQueueTime)).append("\n");
        sb.append("    endTime: ").append(toIndentedString(endTime)).append("\n");
        sb.append("    id: ").append(toIndentedString(id)).append("\n");
        sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
        sb.append("    pipeline: ").append(toIndentedString(pipeline)).append("\n");
        sb.append("    result: ").append(toIndentedString(result)).append("\n");
        sb.append("    runSummary: ").append(toIndentedString(runSummary)).append("\n");
        sb.append("    startTime: ").append(toIndentedString(startTime)).append("\n");
        sb.append("    state: ").append(toIndentedString(state)).append("\n");
        sb.append("    type: ").append(toIndentedString(type)).append("\n");
        sb.append("    commitId: ").append(toIndentedString(commitId)).append("\n");
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
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

