package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ExtensionClassImpllinks;
import javax.validation.constraints.*;
import javax.validation.Valid;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2024-03-15T14:15:29.514273296Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class ExtensionClassImpl   {
  
  private String propertyClass;
  private ExtensionClassImpllinks links;
  private List<String> classes;

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("_links")
  public ExtensionClassImpllinks getLinks() {
    return links;
  }
  public void setLinks(ExtensionClassImpllinks links) {
    this.links = links;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("classes")
  public List<String> getClasses() {
    return classes;
  }
  public void setClasses(List<String> classes) {
    this.classes = classes;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtensionClassImpl extensionClassImpl = (ExtensionClassImpl) o;
    return Objects.equals(this.propertyClass, extensionClassImpl.propertyClass) &&
        Objects.equals(this.links, extensionClassImpl.links) &&
        Objects.equals(this.classes, extensionClassImpl.classes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, classes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExtensionClassImpl {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    classes: ").append(toIndentedString(classes)).append("\n");
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

