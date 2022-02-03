package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapitools.server.api.model.FavoriteImpllinks;
import org.openapitools.server.api.model.PipelineImpl;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class FavoriteImpl   {
  
  private String propertyClass;
  private FavoriteImpllinks links;
  private PipelineImpl item;

  public FavoriteImpl () {

  }

  public FavoriteImpl (String propertyClass, FavoriteImpllinks links, PipelineImpl item) {
    this.propertyClass = propertyClass;
    this.links = links;
    this.item = item;
  }

    
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("_links")
  public FavoriteImpllinks getLinks() {
    return links;
  }
  public void setLinks(FavoriteImpllinks links) {
    this.links = links;
  }

    
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
