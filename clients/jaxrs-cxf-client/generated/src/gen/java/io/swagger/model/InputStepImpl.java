package io.swagger.model;

import io.swagger.model.InputStepImpllinks;
import io.swagger.model.StringParameterDefinition;
import java.util.ArrayList;
import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class InputStepImpl  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;
  @ApiModelProperty(value = "")
  private InputStepImpllinks links = null;
  @ApiModelProperty(value = "")
  private String id = null;
  @ApiModelProperty(value = "")
  private String message = null;
  @ApiModelProperty(value = "")
  private String ok = null;
  @ApiModelProperty(value = "")
  private List<StringParameterDefinition> parameters = new ArrayList<StringParameterDefinition>();
  @ApiModelProperty(value = "")
  private String submitter = null;

 /**
   * Get propertyClass
   * @return propertyClass
  **/
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

