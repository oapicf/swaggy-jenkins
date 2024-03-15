package org.openapitools.model;

import org.openapitools.model.InputStepImpl;
import org.openapitools.model.PipelineStepImpllinks;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class PipelineStepImpl  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  @Valid
  private PipelineStepImpllinks links;

  @ApiModelProperty(value = "")
  private String displayName;

  @ApiModelProperty(value = "")
  private Integer durationInMillis;

  @ApiModelProperty(value = "")
  private String id;

  @ApiModelProperty(value = "")
  @Valid
  private InputStepImpl input;

  @ApiModelProperty(value = "")
  private String result;

  @ApiModelProperty(value = "")
  private String startTime;

  @ApiModelProperty(value = "")
  private String state;
 /**
   * Get propertyClass
   * @return propertyClass
  **/
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public PipelineStepImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public PipelineStepImpllinks getLinks() {
    return links;
  }

  public void setLinks(PipelineStepImpllinks links) {
    this.links = links;
  }

  public PipelineStepImpl links(PipelineStepImpllinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get displayName
   * @return displayName
  **/
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public PipelineStepImpl displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

 /**
   * Get durationInMillis
   * @return durationInMillis
  **/
  @JsonProperty("durationInMillis")
  public Integer getDurationInMillis() {
    return durationInMillis;
  }

  public void setDurationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
  }

  public PipelineStepImpl durationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
    return this;
  }

 /**
   * Get id
   * @return id
  **/
  @JsonProperty("id")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public PipelineStepImpl id(String id) {
    this.id = id;
    return this;
  }

 /**
   * Get input
   * @return input
  **/
  @JsonProperty("input")
  public InputStepImpl getInput() {
    return input;
  }

  public void setInput(InputStepImpl input) {
    this.input = input;
  }

  public PipelineStepImpl input(InputStepImpl input) {
    this.input = input;
    return this;
  }

 /**
   * Get result
   * @return result
  **/
  @JsonProperty("result")
  public String getResult() {
    return result;
  }

  public void setResult(String result) {
    this.result = result;
  }

  public PipelineStepImpl result(String result) {
    this.result = result;
    return this;
  }

 /**
   * Get startTime
   * @return startTime
  **/
  @JsonProperty("startTime")
  public String getStartTime() {
    return startTime;
  }

  public void setStartTime(String startTime) {
    this.startTime = startTime;
  }

  public PipelineStepImpl startTime(String startTime) {
    this.startTime = startTime;
    return this;
  }

 /**
   * Get state
   * @return state
  **/
  @JsonProperty("state")
  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }

  public PipelineStepImpl state(String state) {
    this.state = state;
    return this;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PipelineStepImpl pipelineStepImpl = (PipelineStepImpl) o;
    return Objects.equals(this.propertyClass, pipelineStepImpl.propertyClass) &&
        Objects.equals(this.links, pipelineStepImpl.links) &&
        Objects.equals(this.displayName, pipelineStepImpl.displayName) &&
        Objects.equals(this.durationInMillis, pipelineStepImpl.durationInMillis) &&
        Objects.equals(this.id, pipelineStepImpl.id) &&
        Objects.equals(this.input, pipelineStepImpl.input) &&
        Objects.equals(this.result, pipelineStepImpl.result) &&
        Objects.equals(this.startTime, pipelineStepImpl.startTime) &&
        Objects.equals(this.state, pipelineStepImpl.state);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, displayName, durationInMillis, id, input, result, startTime, state);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineStepImpl {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
    sb.append("    durationInMillis: ").append(toIndentedString(durationInMillis)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    input: ").append(toIndentedString(input)).append("\n");
    sb.append("    result: ").append(toIndentedString(result)).append("\n");
    sb.append("    startTime: ").append(toIndentedString(startTime)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

