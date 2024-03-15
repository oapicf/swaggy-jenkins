/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI document version: 2.0.1-pre.0
 * Maintained by: blah+oapicf@cliffano.com
 *
 * AUTO-GENERATED FILE, DO NOT MODIFY!
 */
package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.FavoriteImpllinks;
import org.openapitools.model.PipelineImpl;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaUndertowServerCodegen", date = "2024-03-15T14:13:06.635705781Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class FavoriteImpl   {
  
  private String propertyClass;
  private FavoriteImpllinks links;
  private PipelineImpl item;

  /**
   */
  public FavoriteImpl propertyClass(String propertyClass) {
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

  /**
   */
  public FavoriteImpl links(FavoriteImpllinks links) {
    this.links = links;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_links")
  public FavoriteImpllinks getLinks() {
    return links;
  }
  public void setLinks(FavoriteImpllinks links) {
    this.links = links;
  }

  /**
   */
  public FavoriteImpl item(PipelineImpl item) {
    this.item = item;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("item")
  public PipelineImpl getItem() {
    return item;
  }
  public void setItem(PipelineImpl item) {
    this.item = item;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FavoriteImpl favoriteImpl = (FavoriteImpl) o;
    return Objects.equals(propertyClass, favoriteImpl.propertyClass) &&
        Objects.equals(links, favoriteImpl.links) &&
        Objects.equals(item, favoriteImpl.item);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, item);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FavoriteImpl {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    item: ").append(toIndentedString(item)).append("\n");
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

