package org.openapitools.server.model;

import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class QueueItemImpl   {

    private String propertyClass;
    private Integer expectedBuildNumber;
    private String id;
    private String pipeline;
    private Integer queuedTime;

    /**
     * Default constructor.
     */
    public QueueItemImpl() {
    // JSON-B / Jackson
    }

    /**
     * Create QueueItemImpl.
     *
     * @param propertyClass propertyClass
     * @param expectedBuildNumber expectedBuildNumber
     * @param id id
     * @param pipeline pipeline
     * @param queuedTime queuedTime
     */
    public QueueItemImpl(
        String propertyClass, 
        Integer expectedBuildNumber, 
        String id, 
        String pipeline, 
        Integer queuedTime
    ) {
        this.propertyClass = propertyClass;
        this.expectedBuildNumber = expectedBuildNumber;
        this.id = id;
        this.pipeline = pipeline;
        this.queuedTime = queuedTime;
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
     * Get expectedBuildNumber
     * @return expectedBuildNumber
     */
    public Integer getExpectedBuildNumber() {
        return expectedBuildNumber;
    }

    public void setExpectedBuildNumber(Integer expectedBuildNumber) {
        this.expectedBuildNumber = expectedBuildNumber;
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
     * Get queuedTime
     * @return queuedTime
     */
    public Integer getQueuedTime() {
        return queuedTime;
    }

    public void setQueuedTime(Integer queuedTime) {
        this.queuedTime = queuedTime;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class QueueItemImpl {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    expectedBuildNumber: ").append(toIndentedString(expectedBuildNumber)).append("\n");
        sb.append("    id: ").append(toIndentedString(id)).append("\n");
        sb.append("    pipeline: ").append(toIndentedString(pipeline)).append("\n");
        sb.append("    queuedTime: ").append(toIndentedString(queuedTime)).append("\n");
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

