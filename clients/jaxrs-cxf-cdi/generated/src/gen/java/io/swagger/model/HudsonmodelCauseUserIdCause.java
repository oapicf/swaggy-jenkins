package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;



public class HudsonmodelCauseUserIdCause   {
  
  private String propertyClass = null;
  private String shortDescription = null;
  private String userId = null;
  private String userName = null;

  /**
   **/
  public HudsonmodelCauseUserIdCause propertyClass(String propertyClass) {
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
   **/
  public HudsonmodelCauseUserIdCause shortDescription(String shortDescription) {
    this.shortDescription = shortDescription;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("shortDescription")
  public String getShortDescription() {
    return shortDescription;
  }
  public void setShortDescription(String shortDescription) {
    this.shortDescription = shortDescription;
  }

  /**
   **/
  public HudsonmodelCauseUserIdCause userId(String userId) {
    this.userId = userId;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("userId")
  public String getUserId() {
    return userId;
  }
  public void setUserId(String userId) {
    this.userId = userId;
  }

  /**
   **/
  public HudsonmodelCauseUserIdCause userName(String userName) {
    this.userName = userName;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("userName")
  public String getUserName() {
    return userName;
  }
  public void setUserName(String userName) {
    this.userName = userName;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HudsonmodelCauseUserIdCause hudsonmodelCauseUserIdCause = (HudsonmodelCauseUserIdCause) o;
    return Objects.equals(propertyClass, hudsonmodelCauseUserIdCause.propertyClass) &&
        Objects.equals(shortDescription, hudsonmodelCauseUserIdCause.shortDescription) &&
        Objects.equals(userId, hudsonmodelCauseUserIdCause.userId) &&
        Objects.equals(userName, hudsonmodelCauseUserIdCause.userName);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, shortDescription, userId, userName);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonmodelCauseUserIdCause {\n");
    
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

