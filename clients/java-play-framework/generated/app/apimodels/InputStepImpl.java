package apimodels;

import apimodels.InputStepImpllinks;
import apimodels.StringParameterDefinition;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
import javax.validation.Valid;
/**
 * InputStepImpl
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2024-03-15T14:12:54.149422212Z[Etc/UTC]", comments = "Generator version: 7.4.0")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class InputStepImpl   {
  @JsonProperty("_class")
  
  private String propertyClass;

  @JsonProperty("_links")
  @Valid

  private InputStepImpllinks links;

  @JsonProperty("id")
  
  private String id;

  @JsonProperty("message")
  
  private String message;

  @JsonProperty("ok")
  
  private String ok;

  @JsonProperty("parameters")
  @Valid

  private List<@Valid StringParameterDefinition> parameters = null;

  @JsonProperty("submitter")
  
  private String submitter;

  public InputStepImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

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

  public InputStepImpl links(InputStepImpllinks links) {
    this.links = links;
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

  public InputStepImpl id(String id) {
    this.id = id;
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

  public InputStepImpl message(String message) {
    this.message = message;
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

  public InputStepImpl ok(String ok) {
    this.ok = ok;
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

  public InputStepImpl parameters(List<@Valid StringParameterDefinition> parameters) {
    this.parameters = parameters;
    return this;
  }

  public InputStepImpl addParametersItem(StringParameterDefinition parametersItem) {
    if (this.parameters == null) {
      this.parameters = new ArrayList<>();
    }
    this.parameters.add(parametersItem);
    return this;
  }

   /**
   * Get parameters
   * @return parameters
  **/
  public List<@Valid StringParameterDefinition> getParameters() {
    return parameters;
  }

  public void setParameters(List<@Valid StringParameterDefinition> parameters) {
    this.parameters = parameters;
  }

  public InputStepImpl submitter(String submitter) {
    this.submitter = submitter;
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

