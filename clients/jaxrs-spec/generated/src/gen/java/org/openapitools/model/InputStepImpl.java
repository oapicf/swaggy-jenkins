package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.InputStepImpllinks;
import org.openapitools.model.StringParameterDefinition;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("InputStepImpl")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2022-06-04T08:09:11.684443Z[Etc/UTC]")
public class InputStepImpl   {
  
  private @Valid String propertyClass;
  private @Valid InputStepImpllinks links;
  private @Valid String id;
  private @Valid String message;
  private @Valid String ok;
  private @Valid List<StringParameterDefinition> parameters = new ArrayList<>();
  private @Valid String submitter;

  /**
   **/
  public InputStepImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
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
  @JsonProperty("_links")
  public InputStepImpllinks getLinks() {
    return links;
  }

  @JsonProperty("_links")
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
  @JsonProperty("id")
  public String getId() {
    return id;
  }

  @JsonProperty("id")
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
  @JsonProperty("message")
  public String getMessage() {
    return message;
  }

  @JsonProperty("message")
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
  @JsonProperty("ok")
  public String getOk() {
    return ok;
  }

  @JsonProperty("ok")
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
  @JsonProperty("parameters")
  public List<StringParameterDefinition> getParameters() {
    return parameters;
  }

  @JsonProperty("parameters")
  public void setParameters(List<StringParameterDefinition> parameters) {
    this.parameters = parameters;
  }

  public InputStepImpl addParametersItem(StringParameterDefinition parametersItem) {
    if (this.parameters == null) {
      this.parameters = new ArrayList<>();
    }

    this.parameters.add(parametersItem);
    return this;
  }

  public InputStepImpl removeParametersItem(StringParameterDefinition parametersItem) {
    if (parametersItem != null && this.parameters != null) {
      this.parameters.remove(parametersItem);
    }

    return this;
  }
/**
   **/
  public InputStepImpl submitter(String submitter) {
    this.submitter = submitter;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("submitter")
  public String getSubmitter() {
    return submitter;
  }

  @JsonProperty("submitter")
  public void setSubmitter(String submitter) {
    this.submitter = submitter;
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

