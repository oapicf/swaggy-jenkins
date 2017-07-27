package apimodels;

import java.util.Objects;
import apimodels.IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.*;
/**
 * IojenkinsblueoceanserviceembeddedrestExtensionClassImpl
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

public class IojenkinsblueoceanserviceembeddedrestExtensionClassImpl   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("_links")
  private IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks links = null;

  @JsonProperty("classes")
  private List<String> classes = null;

  public IojenkinsblueoceanserviceembeddedrestExtensionClassImpl propertyClass(String propertyClass) {
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

  public IojenkinsblueoceanserviceembeddedrestExtensionClassImpl links(IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks links) {
    this.links = links;
    return this;
  }

   /**
   * Get links
   * @return links
  **/
    public IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks getLinks() {
    return links;
  }

  public void setLinks(IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks links) {
    this.links = links;
  }

  public IojenkinsblueoceanserviceembeddedrestExtensionClassImpl classes(List<String> classes) {
    this.classes = classes;
    return this;
  }

  public IojenkinsblueoceanserviceembeddedrestExtensionClassImpl addClassesItem(String classesItem) {
    if (this.classes == null) {
      this.classes = new ArrayList<String>();
    }
    this.classes.add(classesItem);
    return this;
  }

   /**
   * Get classes
   * @return classes
  **/
    public List<String> getClasses() {
    return classes;
  }

  public void setClasses(List<String> classes) {
    this.classes = classes;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IojenkinsblueoceanserviceembeddedrestExtensionClassImpl iojenkinsblueoceanserviceembeddedrestExtensionClassImpl = (IojenkinsblueoceanserviceembeddedrestExtensionClassImpl) o;
    return Objects.equals(this.propertyClass, iojenkinsblueoceanserviceembeddedrestExtensionClassImpl.propertyClass) &&
        Objects.equals(this.links, iojenkinsblueoceanserviceembeddedrestExtensionClassImpl.links) &&
        Objects.equals(this.classes, iojenkinsblueoceanserviceembeddedrestExtensionClassImpl.classes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, classes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IojenkinsblueoceanserviceembeddedrestExtensionClassImpl {\n");
    
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

