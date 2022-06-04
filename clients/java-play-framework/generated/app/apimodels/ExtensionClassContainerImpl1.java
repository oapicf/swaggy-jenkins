package apimodels;

import apimodels.ExtensionClassContainerImpl1links;
import apimodels.ExtensionClassContainerImpl1map;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ExtensionClassContainerImpl1
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2022-06-04T08:08:33.694891Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ExtensionClassContainerImpl1   {
  @JsonProperty("_class")
  
  private String propertyClass;

  @JsonProperty("_links")
  @Valid

  private ExtensionClassContainerImpl1links links;

  @JsonProperty("map")
  @Valid

  private ExtensionClassContainerImpl1map map;

  public ExtensionClassContainerImpl1 propertyClass(String propertyClass) {
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

  public ExtensionClassContainerImpl1 links(ExtensionClassContainerImpl1links links) {
    this.links = links;
    return this;
  }

   /**
   * Get links
   * @return links
  **/
  public ExtensionClassContainerImpl1links getLinks() {
    return links;
  }

  public void setLinks(ExtensionClassContainerImpl1links links) {
    this.links = links;
  }

  public ExtensionClassContainerImpl1 map(ExtensionClassContainerImpl1map map) {
    this.map = map;
    return this;
  }

   /**
   * Get map
   * @return map
  **/
  public ExtensionClassContainerImpl1map getMap() {
    return map;
  }

  public void setMap(ExtensionClassContainerImpl1map map) {
    this.map = map;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtensionClassContainerImpl1 extensionClassContainerImpl1 = (ExtensionClassContainerImpl1) o;
    return Objects.equals(propertyClass, extensionClassContainerImpl1.propertyClass) &&
        Objects.equals(links, extensionClassContainerImpl1.links) &&
        Objects.equals(map, extensionClassContainerImpl1.map);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, map);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExtensionClassContainerImpl1 {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    map: ").append(toIndentedString(map)).append("\n");
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

