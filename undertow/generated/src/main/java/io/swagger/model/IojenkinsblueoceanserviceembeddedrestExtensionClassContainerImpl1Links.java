package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.IojenkinsblueoceanresthalLink;





@javax.annotation.Generated(value = "io.swagger.codegen.languages.UndertowCodegen", date = "2017-07-25T10:46:51.588+10:00")
public class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links   {
  
  private IojenkinsblueoceanresthalLink self = null;
  private String propertyClass = null;

  /**
   **/
  public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links self(IojenkinsblueoceanresthalLink self) {
    this.self = self;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("self")
  public IojenkinsblueoceanresthalLink getSelf() {
    return self;
  }
  public void setSelf(IojenkinsblueoceanresthalLink self) {
    this.self = self;
  }

  /**
   **/
  public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links = (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links) o;
    return Objects.equals(self, iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links.self) &&
        Objects.equals(propertyClass, iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
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

