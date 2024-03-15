package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.InputStepImpllinks;
import org.openapitools.model.StringParameterDefinition;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class InputStepImpl  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  @Valid
  private InputStepImpllinks links;

  @ApiModelProperty(value = "")
  private String id;

  @ApiModelProperty(value = "")
  private String message;

  @ApiModelProperty(value = "")
  private String ok;

  @ApiModelProperty(value = "")
  @Valid
  private List<@Valid StringParameterDefinition> parameters;

  @ApiModelProperty(value = "")
  private String submitter;
 /**
  * Get propertyClass
  * @return propertyClass
  */
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
 public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
  public InputStepImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
  * Get links
  * @return links
  */
  @JsonProperty("_links")
  public InputStepImpllinks getLinks() {
    return links;
  }

  /**
   * Sets the <code>links</code> property.
   */
 public void setLinks(InputStepImpllinks links) {
    this.links = links;
  }

  /**
   * Sets the <code>links</code> property.
   */
  public InputStepImpl links(InputStepImpllinks links) {
    this.links = links;
    return this;
  }

 /**
  * Get id
  * @return id
  */
  @JsonProperty("id")
  public String getId() {
    return id;
  }

  /**
   * Sets the <code>id</code> property.
   */
 public void setId(String id) {
    this.id = id;
  }

  /**
   * Sets the <code>id</code> property.
   */
  public InputStepImpl id(String id) {
    this.id = id;
    return this;
  }

 /**
  * Get message
  * @return message
  */
  @JsonProperty("message")
  public String getMessage() {
    return message;
  }

  /**
   * Sets the <code>message</code> property.
   */
 public void setMessage(String message) {
    this.message = message;
  }

  /**
   * Sets the <code>message</code> property.
   */
  public InputStepImpl message(String message) {
    this.message = message;
    return this;
  }

 /**
  * Get ok
  * @return ok
  */
  @JsonProperty("ok")
  public String getOk() {
    return ok;
  }

  /**
   * Sets the <code>ok</code> property.
   */
 public void setOk(String ok) {
    this.ok = ok;
  }

  /**
   * Sets the <code>ok</code> property.
   */
  public InputStepImpl ok(String ok) {
    this.ok = ok;
    return this;
  }

 /**
  * Get parameters
  * @return parameters
  */
  @JsonProperty("parameters")
  public List<@Valid StringParameterDefinition> getParameters() {
    return parameters;
  }

  /**
   * Sets the <code>parameters</code> property.
   */
 public void setParameters(List<@Valid StringParameterDefinition> parameters) {
    this.parameters = parameters;
  }

  /**
   * Sets the <code>parameters</code> property.
   */
  public InputStepImpl parameters(List<@Valid StringParameterDefinition> parameters) {
    this.parameters = parameters;
    return this;
  }

  /**
   * Adds a new item to the <code>parameters</code> list.
   */
  public InputStepImpl addParametersItem(StringParameterDefinition parametersItem) {
    this.parameters.add(parametersItem);
    return this;
  }

 /**
  * Get submitter
  * @return submitter
  */
  @JsonProperty("submitter")
  public String getSubmitter() {
    return submitter;
  }

  /**
   * Sets the <code>submitter</code> property.
   */
 public void setSubmitter(String submitter) {
    this.submitter = submitter;
  }

  /**
   * Sets the <code>submitter</code> property.
   */
  public InputStepImpl submitter(String submitter) {
    this.submitter = submitter;
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
    InputStepImpl inputStepImpl = (InputStepImpl) o;
    return Objects.equals(this.propertyClass, inputStepImpl.propertyClass) &&
        Objects.equals(this.links, inputStepImpl.links) &&
        Objects.equals(this.id, inputStepImpl.id) &&
        Objects.equals(this.message, inputStepImpl.message) &&
        Objects.equals(this.ok, inputStepImpl.ok) &&
        Objects.equals(this.parameters, inputStepImpl.parameters) &&
        Objects.equals(this.submitter, inputStepImpl.submitter);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, id, message, ok, parameters, submitter);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InputStepImpl {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    message: ").append(toIndentedString(message)).append("\n");
    sb.append("    ok: ").append(toIndentedString(ok)).append("\n");
    sb.append("    parameters: ").append(toIndentedString(parameters)).append("\n");
    sb.append("    submitter: ").append(toIndentedString(submitter)).append("\n");
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

