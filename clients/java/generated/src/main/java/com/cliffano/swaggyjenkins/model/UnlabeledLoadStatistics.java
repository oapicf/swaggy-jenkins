/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.cliffano.swaggyjenkins.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

/**
 * UnlabeledLoadStatistics
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2019-04-10T03:53:55.760Z[GMT]")
public class UnlabeledLoadStatistics {
  public static final String SERIALIZED_NAME_PROPERTY_CLASS = "_class";
  @SerializedName(SERIALIZED_NAME_PROPERTY_CLASS)
  private String propertyClass = null;

  public UnlabeledLoadStatistics propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
  @ApiModelProperty(value = "")
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
    UnlabeledLoadStatistics unlabeledLoadStatistics = (UnlabeledLoadStatistics) o;
    return Objects.equals(this.propertyClass, unlabeledLoadStatistics.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UnlabeledLoadStatistics {\n");
    
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

