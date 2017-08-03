package io.swagger.model;

import io.swagger.model.InputStepImpllinks;
import io.swagger.model.StringParameterDefinition;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;


public class InputStepImpl   {
  
  private String propertyClass = null;
  private InputStepImpllinks links = null;
  private String id = null;
  private String message = null;
  private String ok = null;
  private List<StringParameterDefinition> parameters = new ArrayList<StringParameterDefinition>();
  private String submitter = null;

  /**
   **/
  public InputStepImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  public InputStepImpl links(InputStepImpllinks links) {
    this.links = links;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public InputStepImpllinks getLinks() {
    return links;
  }
  public void setLinks(InputStepImpllinks links) {
    this.links = links;
  }

  /**
   **/
  public InputStepImpl id(String id) {
    this.id = id;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  public InputStepImpl message(String message) {
    this.message = message;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public String getMessage() {
    return message;
  }
  public void setMessage(String message) {
    this.message = message;
  }

  /**
   **/
  public InputStepImpl ok(String ok) {
    this.ok = ok;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public String getOk() {
    return ok;
  }
  public void setOk(String ok) {
    this.ok = ok;
  }

  /**
   **/
  public InputStepImpl parameters(List<StringParameterDefinition> parameters) {
    this.parameters = parameters;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public List<StringParameterDefinition> getParameters() {
    return parameters;
  }
  public void setParameters(List<StringParameterDefinition> parameters) {
    this.parameters = parameters;
  }

  /**
   **/
  public InputStepImpl submitter(String submitter) {
    this.submitter = submitter;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public String getSubmitter() {
    return submitter;
  }
  public void setSubmitter(String submitter) {
    this.submitter = submitter;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InputStepImpl inputStepImpl = (InputStepImpl) o;
    return Objects.equals(propertyClass, inputStepImpl.propertyClass) &&
        Objects.equals(links, inputStepImpl.links) &&
        Objects.equals(id, inputStepImpl.id) &&
        Objects.equals(message, inputStepImpl.message) &&
        Objects.equals(ok, inputStepImpl.ok) &&
        Objects.equals(parameters, inputStepImpl.parameters) &&
        Objects.equals(submitter, inputStepImpl.submitter);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

