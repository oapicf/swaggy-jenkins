package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class FreeStyleProjecthealthReport  {
  
  @ApiModelProperty(value = "")
  private String description = null;

  @ApiModelProperty(value = "")
  private String iconClassName = null;

  @ApiModelProperty(value = "")
  private String iconUrl = null;

  @ApiModelProperty(value = "")
  private Integer score = null;

  @ApiModelProperty(value = "")
  private String propertyClass = null;
 /**
   * Get description
   * @return description
  **/
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public FreeStyleProjecthealthReport description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get iconClassName
   * @return iconClassName
  **/
  @JsonProperty("iconClassName")
  public String getIconClassName() {
    return iconClassName;
  }

  public void setIconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
  }

  public FreeStyleProjecthealthReport iconClassName(String iconClassName) {
    this.iconClassName = iconClassName;
    return this;
  }

 /**
   * Get iconUrl
   * @return iconUrl
  **/
  @JsonProperty("iconUrl")
  public String getIconUrl() {
    return iconUrl;
  }

  public void setIconUrl(String iconUrl) {
    this.iconUrl = iconUrl;
  }

  public FreeStyleProjecthealthReport iconUrl(String iconUrl) {
    this.iconUrl = iconUrl;
    return this;
  }

 /**
   * Get score
   * @return score
  **/
  @JsonProperty("score")
  public Integer getScore() {
    return score;
  }

  public void setScore(Integer score) {
    this.score = score;
  }

  public FreeStyleProjecthealthReport score(Integer score) {
    this.score = score;
    return this;
  }

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

  public FreeStyleProjecthealthReport propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FreeStyleProjecthealthReport {\n");
    
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    iconClassName: ").append(toIndentedString(iconClassName)).append("\n");
    sb.append("    iconUrl: ").append(toIndentedString(iconUrl)).append("\n");
    sb.append("    score: ").append(toIndentedString(score)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
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

