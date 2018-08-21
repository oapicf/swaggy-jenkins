package org.openapitools.model;

import org.openapitools.model.FavoriteImpllinks;
import org.openapitools.model.PipelineImpl;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class FavoriteImpl  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;

  @ApiModelProperty(value = "")
  private FavoriteImpllinks links = null;

  @ApiModelProperty(value = "")
  private PipelineImpl item = null;
 /**
   * Get propertyClass
   * @return propertyClass
  **/
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public FavoriteImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public FavoriteImpllinks getLinks() {
    return links;
  }

  public void setLinks(FavoriteImpllinks links) {
    this.links = links;
  }

  public FavoriteImpl links(FavoriteImpllinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get item
   * @return item
  **/
  @JsonProperty("item")
  public PipelineImpl getItem() {
    return item;
  }

  public void setItem(PipelineImpl item) {
    this.item = item;
  }

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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

