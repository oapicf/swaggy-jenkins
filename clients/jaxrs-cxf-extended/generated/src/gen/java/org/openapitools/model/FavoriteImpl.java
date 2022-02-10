package org.openapitools.model;

import org.openapitools.model.FavoriteImpllinks;
import org.openapitools.model.PipelineImpl;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class FavoriteImpl  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  @Valid
  private FavoriteImpllinks links;

  @ApiModelProperty(value = "")
  @Valid
  private PipelineImpl item;
 /**
  * Get propertyClass
  * @return propertyClass
  */
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
 public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
  public FavoriteImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
  * Get links
  * @return links
  */
  @JsonProperty("_links")
  public FavoriteImpllinks getLinks() {
    return links;
  }

  /**
   * Sets the <code>links</code> property.
   */
 public void setLinks(FavoriteImpllinks links) {
    this.links = links;
  }

  /**
   * Sets the <code>links</code> property.
   */
  public FavoriteImpl links(FavoriteImpllinks links) {
    this.links = links;
    return this;
  }

 /**
  * Get item
  * @return item
  */
  @JsonProperty("item")
  public PipelineImpl getItem() {
    return item;
  }

  /**
   * Sets the <code>item</code> property.
   */
 public void setItem(PipelineImpl item) {
    this.item = item;
  }

  /**
   * Sets the <code>item</code> property.
   */
  public FavoriteImpl item(PipelineImpl item) {
    this.item = item;
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

