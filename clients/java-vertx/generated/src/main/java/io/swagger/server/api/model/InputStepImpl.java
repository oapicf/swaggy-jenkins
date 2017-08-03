package io.swagger.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.server.api.model.InputStepImpllinks;
import io.swagger.server.api.model.StringParameterDefinition;
import java.util.ArrayList;
import java.util.List;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class InputStepImpl   {
  
  private String propertyClass = null;
  private InputStepImpllinks links = null;
  private String id = null;
  private String message = null;
  private String ok = null;
  private List<StringParameterDefinition> parameters = new ArrayList<StringParameterDefinition>();
  private String submitter = null;

  public InputStepImpl () {

  }

  public InputStepImpl (String propertyClass, InputStepImpllinks links, String id, String message, String ok, List<StringParameterDefinition> parameters, String submitter) {
    this.propertyClass = propertyClass;
    this.links = links;
    this.id = id;
    this.message = message;
    this.ok = ok;
    this.parameters = parameters;
    this.submitter = submitter;
  }

    
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("_links")
  public InputStepImpllinks getLinks() {
    return links;
  }
  public void setLinks(InputStepImpllinks links) {
    this.links = links;
  }

    
  @JsonProperty("id")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

    
  @JsonProperty("message")
  public String getMessage() {
    return message;
  }
  public void setMessage(String message) {
    this.message = message;
  }

    
  @JsonProperty("ok")
  public String getOk() {
    return ok;
  }
  public void setOk(String ok) {
    this.ok = ok;
  }

    
  @JsonProperty("parameters")
  public List<StringParameterDefinition> getParameters() {
    return parameters;
  }
  public void setParameters(List<StringParameterDefinition> parameters) {
    this.parameters = parameters;
  }

    
  @JsonProperty("submitter")
  public String getSubmitter() {
    return submitter;
  }
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
