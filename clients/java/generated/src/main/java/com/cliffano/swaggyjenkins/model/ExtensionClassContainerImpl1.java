/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.cliffano.swaggyjenkins.model;

import java.util.Objects;
import java.util.Arrays;
import com.cliffano.swaggyjenkins.model.ExtensionClassContainerImpl1links;
import com.cliffano.swaggyjenkins.model.ExtensionClassContainerImpl1map;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

/**
 * ExtensionClassContainerImpl1
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-02-09T13:00:41.367124Z[Etc/UTC]")
public class ExtensionClassContainerImpl1 {
  public static final String SERIALIZED_NAME_PROPERTY_CLASS = "_class";
  @SerializedName(SERIALIZED_NAME_PROPERTY_CLASS)
  private String propertyClass;

  public static final String SERIALIZED_NAME_LINKS = "_links";
  @SerializedName(SERIALIZED_NAME_LINKS)
  private ExtensionClassContainerImpl1links links;

  public static final String SERIALIZED_NAME_MAP = "map";
  @SerializedName(SERIALIZED_NAME_MAP)
  private ExtensionClassContainerImpl1map map;

  public ExtensionClassContainerImpl1() { 
  }

  public ExtensionClassContainerImpl1 propertyClass(String propertyClass) {
    
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

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
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

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
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

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
    return Objects.equals(this.propertyClass, extensionClassContainerImpl1.propertyClass) &&
        Objects.equals(this.links, extensionClassContainerImpl1.links) &&
        Objects.equals(this.map, extensionClassContainerImpl1.map);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, map);
  }

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

