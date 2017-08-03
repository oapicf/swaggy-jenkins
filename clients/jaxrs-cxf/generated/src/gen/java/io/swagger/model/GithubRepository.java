package io.swagger.model;

import io.swagger.model.GithubRepositorylinks;
import io.swagger.model.GithubRepositorypermissions;
import javax.validation.constraints.*;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class GithubRepository  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;
  @ApiModelProperty(value = "")
  private GithubRepositorylinks links = null;
  @ApiModelProperty(value = "")
  private String defaultBranch = null;
  @ApiModelProperty(value = "")
  private String description = null;
  @ApiModelProperty(value = "")
  private String name = null;
  @ApiModelProperty(value = "")
  private GithubRepositorypermissions permissions = null;
  @ApiModelProperty(value = "")
  private Boolean _private = null;
  @ApiModelProperty(value = "")
  private String fullName = null;

 /**
   * Get propertyClass
   * @return propertyClass
  **/
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public GithubRepository propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  public GithubRepositorylinks getLinks() {
    return links;
  }

  public void setLinks(GithubRepositorylinks links) {
    this.links = links;
  }

  public GithubRepository links(GithubRepositorylinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get defaultBranch
   * @return defaultBranch
  **/
  public String getDefaultBranch() {
    return defaultBranch;
  }

  public void setDefaultBranch(String defaultBranch) {
    this.defaultBranch = defaultBranch;
  }

  public GithubRepository defaultBranch(String defaultBranch) {
    this.defaultBranch = defaultBranch;
    return this;
  }

 /**
   * Get description
   * @return description
  **/
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public GithubRepository description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get name
   * @return name
  **/
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public GithubRepository name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Get permissions
   * @return permissions
  **/
  public GithubRepositorypermissions getPermissions() {
    return permissions;
  }

  public void setPermissions(GithubRepositorypermissions permissions) {
    this.permissions = permissions;
  }

  public GithubRepository permissions(GithubRepositorypermissions permissions) {
    this.permissions = permissions;
    return this;
  }

 /**
   * Get _private
   * @return _private
  **/
  public Boolean isPrivate() {
    return _private;
  }

  public void setPrivate(Boolean _private) {
    this._private = _private;
  }

  public GithubRepository _private(Boolean _private) {
    this._private = _private;
    return this;
  }

 /**
   * Get fullName
   * @return fullName
  **/
  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  public GithubRepository fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubRepository {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    defaultBranch: ").append(toIndentedString(defaultBranch)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    permissions: ").append(toIndentedString(permissions)).append("\n");
    sb.append("    _private: ").append(toIndentedString(_private)).append("\n");
    sb.append("    fullName: ").append(toIndentedString(fullName)).append("\n");
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

