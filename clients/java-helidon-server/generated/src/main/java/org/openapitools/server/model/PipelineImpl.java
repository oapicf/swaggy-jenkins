package org.openapitools.server.model;

import org.openapitools.server.model.PipelineImpllinks;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class PipelineImpl   {

    private String propertyClass;
    private String displayName;
    private Integer estimatedDurationInMillis;
    private String fullName;
    private String latestRun;
    private String name;
    private String organization;
    private Integer weatherScore;
    private PipelineImpllinks links;

    /**
     * Default constructor.
     */
    public PipelineImpl() {
    // JSON-B / Jackson
    }

    /**
     * Create PipelineImpl.
     *
     * @param propertyClass propertyClass
     * @param displayName displayName
     * @param estimatedDurationInMillis estimatedDurationInMillis
     * @param fullName fullName
     * @param latestRun latestRun
     * @param name name
     * @param organization organization
     * @param weatherScore weatherScore
     * @param links links
     */
    public PipelineImpl(
        String propertyClass, 
        String displayName, 
        Integer estimatedDurationInMillis, 
        String fullName, 
        String latestRun, 
        String name, 
        String organization, 
        Integer weatherScore, 
        PipelineImpllinks links
    ) {
        this.propertyClass = propertyClass;
        this.displayName = displayName;
        this.estimatedDurationInMillis = estimatedDurationInMillis;
        this.fullName = fullName;
        this.latestRun = latestRun;
        this.name = name;
        this.organization = organization;
        this.weatherScore = weatherScore;
        this.links = links;
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
     * Get estimatedDurationInMillis
     * @return estimatedDurationInMillis
     */
    public Integer getEstimatedDurationInMillis() {
        return estimatedDurationInMillis;
    }

    public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
        this.estimatedDurationInMillis = estimatedDurationInMillis;
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
     * Get latestRun
     * @return latestRun
     */
    public String getLatestRun() {
        return latestRun;
    }

    public void setLatestRun(String latestRun) {
        this.latestRun = latestRun;
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
     * Get weatherScore
     * @return weatherScore
     */
    public Integer getWeatherScore() {
        return weatherScore;
    }

    public void setWeatherScore(Integer weatherScore) {
        this.weatherScore = weatherScore;
    }

    /**
     * Get links
     * @return links
     */
    public PipelineImpllinks getLinks() {
        return links;
    }

    public void setLinks(PipelineImpllinks links) {
        this.links = links;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class PipelineImpl {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
        sb.append("    estimatedDurationInMillis: ").append(toIndentedString(estimatedDurationInMillis)).append("\n");
        sb.append("    fullName: ").append(toIndentedString(fullName)).append("\n");
        sb.append("    latestRun: ").append(toIndentedString(latestRun)).append("\n");
        sb.append("    name: ").append(toIndentedString(name)).append("\n");
        sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
        sb.append("    weatherScore: ").append(toIndentedString(weatherScore)).append("\n");
        sb.append("    links: ").append(toIndentedString(links)).append("\n");
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

