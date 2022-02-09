package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.FavoriteImpllinks;
import org.openapitools.model.PipelineImpl;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("FavoriteImpl")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2022-02-09T13:05:51.152086Z[Etc/UTC]")public class FavoriteImpl   {
  
  private @Valid String propertyClass;
  private @Valid FavoriteImpllinks links;
  private @Valid PipelineImpl item;

  /**
   **/
  public FavoriteImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
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
  @JsonProperty("_links")
  public FavoriteImpllinks getLinks() {
    return links;
  }

  @JsonProperty("_links")
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
  @JsonProperty("item")
  public PipelineImpl getItem() {
    return item;
  }

  @JsonProperty("item")
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
    return Objects.equals(this.propertyClass, favoriteImpl.propertyClass) &&
        Objects.equals(this.links, favoriteImpl.links) &&
        Objects.equals(this.item, favoriteImpl.item);
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

