package io.swagger.model;

import io.swagger.model.FavoriteImpllinks;
import io.swagger.model.PipelineImpl;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;


public class FavoriteImpl   {
  
  private String propertyClass = null;
  private FavoriteImpllinks links = null;
  private PipelineImpl item = null;

  /**
   **/
  public FavoriteImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  public FavoriteImpl links(FavoriteImpllinks links) {
    this.links = links;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public FavoriteImpllinks getLinks() {
    return links;
  }
  public void setLinks(FavoriteImpllinks links) {
    this.links = links;
  }

  /**
   **/
  public FavoriteImpl item(PipelineImpl item) {
    this.item = item;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public PipelineImpl getItem() {
    return item;
  }
  public void setItem(PipelineImpl item) {
    this.item = item;
  }


  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

