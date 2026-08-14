package org.openapitools.server.model;

import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class PipelineFolderImpl   {

    private String propertyClass;
    private String displayName;
    private String fullName;
    private String name;
    private String organization;
    private Integer numberOfFolders;
    private Integer numberOfPipelines;

    /**
     * Default constructor.
     */
    public PipelineFolderImpl() {
    // JSON-B / Jackson
    }

    /**
     * Create PipelineFolderImpl.
     *
     * @param propertyClass propertyClass
     * @param displayName displayName
     * @param fullName fullName
     * @param name name
     * @param organization organization
     * @param numberOfFolders numberOfFolders
     * @param numberOfPipelines numberOfPipelines
     */
    public PipelineFolderImpl(
        String propertyClass, 
        String displayName, 
        String fullName, 
        String name, 
        String organization, 
        Integer numberOfFolders, 
        Integer numberOfPipelines
    ) {
        this.propertyClass = propertyClass;
        this.displayName = displayName;
        this.fullName = fullName;
        this.name = name;
        this.organization = organization;
        this.numberOfFolders = numberOfFolders;
        this.numberOfPipelines = numberOfPipelines;
    }



    /**
     * Get propertyClass
     * @return propertyClass
     */
    public String getPropertyClass() {
        return propertyClass;
    }

    public void setPropertyClass(String propertyClass) {
        this.propertyClass = propertyClass;
    }

    /**
     * Get displayName
     * @return displayName
     */
    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    /**
     * Get fullName
     * @return fullName
     */
    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    /**
     * Get name
     * @return name
     */
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    /**
     * Get organization
     * @return organization
     */
    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }

    /**
     * Get numberOfFolders
     * @return numberOfFolders
     */
    public Integer getNumberOfFolders() {
        return numberOfFolders;
    }

    public void setNumberOfFolders(Integer numberOfFolders) {
        this.numberOfFolders = numberOfFolders;
    }

    /**
     * Get numberOfPipelines
     * @return numberOfPipelines
     */
    public Integer getNumberOfPipelines() {
        return numberOfPipelines;
    }

    public void setNumberOfPipelines(Integer numberOfPipelines) {
        this.numberOfPipelines = numberOfPipelines;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class PipelineFolderImpl {\n");
        
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
    private static String toIndentedString(Object o) {
        return o == null ? "null" : o.toString().replace("\n", "\n    ");
    }
}

