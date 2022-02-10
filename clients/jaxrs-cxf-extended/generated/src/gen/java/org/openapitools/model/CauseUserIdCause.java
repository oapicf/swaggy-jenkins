package org.openapitools.model;

import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CauseUserIdCause  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  private String shortDescription;

  @ApiModelProperty(value = "")
  private String userId;

  @ApiModelProperty(value = "")
  private String userName;
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
  public CauseUserIdCause propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
  * Get shortDescription
  * @return shortDescription
  */
  @JsonProperty("shortDescription")
  public String getShortDescription() {
    return shortDescription;
  }

  /**
   * Sets the <code>shortDescription</code> property.
   */
 public void setShortDescription(String shortDescription) {
    this.shortDescription = shortDescription;
  }

  /**
   * Sets the <code>shortDescription</code> property.
   */
  public CauseUserIdCause shortDescription(String shortDescription) {
    this.shortDescription = shortDescription;
    return this;
  }

 /**
  * Get userId
  * @return userId
  */
  @JsonProperty("userId")
  public String getUserId() {
    return userId;
  }

  /**
   * Sets the <code>userId</code> property.
   */
 public void setUserId(String userId) {
    this.userId = userId;
  }

  /**
   * Sets the <code>userId</code> property.
   */
  public CauseUserIdCause userId(String userId) {
    this.userId = userId;
    return this;
  }

 /**
  * Get userName
  * @return userName
  */
  @JsonProperty("userName")
  public String getUserName() {
    return userName;
  }

  /**
   * Sets the <code>userName</code> property.
   */
 public void setUserName(String userName) {
    this.userName = userName;
  }

  /**
   * Sets the <code>userName</code> property.
   */
  public CauseUserIdCause userName(String userName) {
    this.userName = userName;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CauseUserIdCause {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    shortDescription: ").append(toIndentedString(shortDescription)).append("\n");
    sb.append("    userId: ").append(toIndentedString(userId)).append("\n");
    sb.append("    userName: ").append(toIndentedString(userName)).append("\n");
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

