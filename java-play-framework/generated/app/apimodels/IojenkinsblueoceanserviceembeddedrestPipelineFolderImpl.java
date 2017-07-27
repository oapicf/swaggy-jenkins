package apimodels;

import java.util.Objects;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.*;
/**
 * IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

public class IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("displayName")
  private String displayName = null;

  @JsonProperty("fullName")
  private String fullName = null;

  @JsonProperty("name")
  private String name = null;

  @JsonProperty("organization")
  private String organization = null;

  @JsonProperty("numberOfFolders")
  private Integer numberOfFolders = null;

  @JsonProperty("numberOfPipelines")
  private Integer numberOfPipelines = null;

  public IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

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

  public IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

   /**
   * Get displayName
   * @return displayName
  **/
    public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl fullName(String fullName) {
    this.fullName = fullName;
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

  public IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl name(String name) {
    this.name = name;
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

  public IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl organization(String organization) {
    this.organization = organization;
    return this;
  }

   /**
   * Get organization
   * @return organization
  **/
    public String getOrganization() {
    return organization;
  }

  public void setOrganization(String organization) {
    this.organization = organization;
  }

  public IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl numberOfFolders(Integer numberOfFolders) {
    this.numberOfFolders = numberOfFolders;
    return this;
  }

   /**
   * Get numberOfFolders
   * @return numberOfFolders
  **/
    public Integer getNumberOfFolders() {
    return numberOfFolders;
  }

  public void setNumberOfFolders(Integer numberOfFolders) {
    this.numberOfFolders = numberOfFolders;
  }

  public IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl numberOfPipelines(Integer numberOfPipelines) {
    this.numberOfPipelines = numberOfPipelines;
    return this;
  }

   /**
   * Get numberOfPipelines
   * @return numberOfPipelines
  **/
    public Integer getNumberOfPipelines() {
    return numberOfPipelines;
  }

  public void setNumberOfPipelines(Integer numberOfPipelines) {
    this.numberOfPipelines = numberOfPipelines;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl = (IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl) o;
    return Objects.equals(this.propertyClass, iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.propertyClass) &&
        Objects.equals(this.displayName, iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.displayName) &&
        Objects.equals(this.fullName, iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.fullName) &&
        Objects.equals(this.name, iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.name) &&
        Objects.equals(this.organization, iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.organization) &&
        Objects.equals(this.numberOfFolders, iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.numberOfFolders) &&
        Objects.equals(this.numberOfPipelines, iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.numberOfPipelines);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, displayName, fullName, name, organization, numberOfFolders, numberOfPipelines);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
    sb.append("    fullName: ").append(toIndentedString(fullName)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
    sb.append("    numberOfFolders: ").append(toIndentedString(numberOfFolders)).append("\n");
    sb.append("    numberOfPipelines: ").append(toIndentedString(numberOfPipelines)).append("\n");
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

