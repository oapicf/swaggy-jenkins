/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.cliffano.swaggyjenkins.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

/**
 * QueueItemImpl
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-02-02T10:43:57.983240Z[Etc/UTC]")
public class QueueItemImpl {
  public static final String SERIALIZED_NAME_PROPERTY_CLASS = "_class";
  @SerializedName(SERIALIZED_NAME_PROPERTY_CLASS)
  private String propertyClass;

  public static final String SERIALIZED_NAME_EXPECTED_BUILD_NUMBER = "expectedBuildNumber";
  @SerializedName(SERIALIZED_NAME_EXPECTED_BUILD_NUMBER)
  private Integer expectedBuildNumber;

  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private String id;

  public static final String SERIALIZED_NAME_PIPELINE = "pipeline";
  @SerializedName(SERIALIZED_NAME_PIPELINE)
  private String pipeline;

  public static final String SERIALIZED_NAME_QUEUED_TIME = "queuedTime";
  @SerializedName(SERIALIZED_NAME_QUEUED_TIME)
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
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getPropertyClass() {
    return propertyClass;
  }


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
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Integer getExpectedBuildNumber() {
    return expectedBuildNumber;
  }


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
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getId() {
    return id;
  }


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
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getPipeline() {
    return pipeline;
  }


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
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Integer getQueuedTime() {
    return queuedTime;
  }


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

