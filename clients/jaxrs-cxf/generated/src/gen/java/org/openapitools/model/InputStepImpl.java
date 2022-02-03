package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.InputStepImpllinks;
import org.openapitools.model.StringParameterDefinition;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
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
  private List<StringParameterDefinition> parameters = null;

  @ApiModelProperty(value = "")
  private String submitter;
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

  public InputStepImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public InputStepImpllinks getLinks() {
    return links;
  }

  public void setLinks(InputStepImpllinks links) {
    this.links = links;
  }

  public InputStepImpl links(InputStepImpllinks links) {
    this.links = links;
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

  public InputStepImpl id(String id) {
    this.id = id;
    return this;
  }

 /**
   * Get message
   * @return message
  **/
  @JsonProperty("message")
  public String getMessage() {
    return message;
  }

  public void setMessage(String message) {
    this.message = message;
  }

  public InputStepImpl message(String message) {
    this.message = message;
    return this;
  }

 /**
   * Get ok
   * @return ok
  **/
  @JsonProperty("ok")
  public String getOk() {
    return ok;
  }

  public void setOk(String ok) {
    this.ok = ok;
  }

  public InputStepImpl ok(String ok) {
    this.ok = ok;
    return this;
  }

 /**
   * Get parameters
   * @return parameters
  **/
  @JsonProperty("parameters")
  public List<StringParameterDefinition> getParameters() {
    return parameters;
  }

  public void setParameters(List<StringParameterDefinition> parameters) {
    this.parameters = parameters;
  }

  public InputStepImpl parameters(List<StringParameterDefinition> parameters) {
    this.parameters = parameters;
    return this;
  }

  public InputStepImpl addParametersItem(StringParameterDefinition parametersItem) {
    this.parameters.add(parametersItem);
    return this;
  }

 /**
   * Get submitter
   * @return submitter
  **/
  @JsonProperty("submitter")
  public String getSubmitter() {
    return submitter;
  }

  public void setSubmitter(String submitter) {
    this.submitter = submitter;
  }

  public InputStepImpl submitter(String submitter) {
    this.submitter = submitter;
    return this;
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

