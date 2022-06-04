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
import com.fasterxml.jackson.annotation.*;

import javax.validation.constraints.*;
import javax.validation.Valid;
import io.micronaut.core.annotation.*;
import javax.annotation.Generated;

/**
 * QueueItemImpl
 */
@JsonPropertyOrder({
  QueueItemImpl.JSON_PROPERTY_PROPERTY_CLASS,
  QueueItemImpl.JSON_PROPERTY_EXPECTED_BUILD_NUMBER,
  QueueItemImpl.JSON_PROPERTY_ID,
  QueueItemImpl.JSON_PROPERTY_PIPELINE,
  QueueItemImpl.JSON_PROPERTY_QUEUED_TIME
})
@JsonTypeName("QueueItemImpl")
@Generated(value="org.openapitools.codegen.languages.JavaMicronautClientCodegen", date="2022-06-04T08:08:17.621469Z[Etc/UTC]")
@Introspected
public class QueueItemImpl {
    public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
    private String propertyClass;

    public static final String JSON_PROPERTY_EXPECTED_BUILD_NUMBER = "expectedBuildNumber";
    private Integer expectedBuildNumber;

    public static final String JSON_PROPERTY_ID = "id";
    private String id;

    public static final String JSON_PROPERTY_PIPELINE = "pipeline";
    private String pipeline;

    public static final String JSON_PROPERTY_QUEUED_TIME = "queuedTime";
    private Integer queuedTime;

    public QueueItemImpl() {
    }

    public QueueItemImpl propertyClass(String propertyClass) {
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

    public QueueItemImpl expectedBuildNumber(Integer expectedBuildNumber) {
        this.expectedBuildNumber = expectedBuildNumber;
        return this;
    }

    /**
     * Get expectedBuildNumber
     * @return expectedBuildNumber
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_EXPECTED_BUILD_NUMBER)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Integer getExpectedBuildNumber() {
        return expectedBuildNumber;
    }

    @JsonProperty(JSON_PROPERTY_EXPECTED_BUILD_NUMBER)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setExpectedBuildNumber(Integer expectedBuildNumber) {
        this.expectedBuildNumber = expectedBuildNumber;
    }

    public QueueItemImpl id(String id) {
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
    public String getId() {
        return id;
    }

    @JsonProperty(JSON_PROPERTY_ID)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setId(String id) {
        this.id = id;
    }

    public QueueItemImpl pipeline(String pipeline) {
        this.pipeline = pipeline;
        return this;
    }

    /**
     * Get pipeline
     * @return pipeline
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_PIPELINE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getPipeline() {
        return pipeline;
    }

    @JsonProperty(JSON_PROPERTY_PIPELINE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setPipeline(String pipeline) {
        this.pipeline = pipeline;
    }

    public QueueItemImpl queuedTime(Integer queuedTime) {
        this.queuedTime = queuedTime;
        return this;
    }

    /**
     * Get queuedTime
     * @return queuedTime
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_QUEUED_TIME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Integer getQueuedTime() {
        return queuedTime;
    }

    @JsonProperty(JSON_PROPERTY_QUEUED_TIME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setQueuedTime(Integer queuedTime) {
        this.queuedTime = queuedTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        QueueItemImpl queueItemImpl = (QueueItemImpl) o;
        return Objects.equals(this.propertyClass, queueItemImpl.propertyClass) &&
            Objects.equals(this.expectedBuildNumber, queueItemImpl.expectedBuildNumber) &&
            Objects.equals(this.id, queueItemImpl.id) &&
            Objects.equals(this.pipeline, queueItemImpl.pipeline) &&
            Objects.equals(this.queuedTime, queueItemImpl.queuedTime);
    }

    @Override
    public int hashCode() {
        return Objects.hash(propertyClass, expectedBuildNumber, id, pipeline, queuedTime);
    }

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
    private String toIndentedString(Object o) {
        if (o == null) {
            return "null";
        }
        return o.toString().replace("\n", "\n    ");
    }

}
