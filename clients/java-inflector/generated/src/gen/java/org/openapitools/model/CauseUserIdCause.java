package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2022-02-02T10:44:21.668219Z[Etc/UTC]")
public class CauseUserIdCause   {
  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("shortDescription")
  private String shortDescription;

  @JsonProperty("userId")
  private String userId;

  @JsonProperty("userName")
  private String userName;

  /**
   **/
  public CauseUserIdCause propertyClass(String propertyClass) {
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
  public CauseUserIdCause shortDescription(String shortDescription) {
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
  public CauseUserIdCause userId(String userId) {
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
  public CauseUserIdCause userName(String userName) {
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
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CauseUserIdCause causeUserIdCause = (CauseUserIdCause) o;
    return Objects.equals(propertyClass, causeUserIdCause.propertyClass) &&
        Objects.equals(shortDescription, causeUserIdCause.shortDescription) &&
        Objects.equals(userId, causeUserIdCause.userId) &&
        Objects.equals(userName, causeUserIdCause.userName);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, shortDescription, userId, userName);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

