package org.openapitools.server.model;

import org.openapitools.server.model.PipelinelatestRun;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class Pipeline   {

    private String propertyClass;
    private String organization;
    private String name;
    private String displayName;
    private String fullName;
    private Integer weatherScore;
    private Integer estimatedDurationInMillis;
    private PipelinelatestRun latestRun;

    /**
     * Default constructor.
     */
    public Pipeline() {
    // JSON-B / Jackson
    }

    /**
     * Create Pipeline.
     *
     * @param propertyClass propertyClass
     * @param organization organization
     * @param name name
     * @param displayName displayName
     * @param fullName fullName
     * @param weatherScore weatherScore
     * @param estimatedDurationInMillis estimatedDurationInMillis
     * @param latestRun latestRun
     */
    public Pipeline(
        String propertyClass, 
        String organization, 
        String name, 
        String displayName, 
        String fullName, 
        Integer weatherScore, 
        Integer estimatedDurationInMillis, 
        PipelinelatestRun latestRun
    ) {
        this.propertyClass = propertyClass;
        this.organization = organization;
        this.name = name;
        this.displayName = displayName;
        this.fullName = fullName;
        this.weatherScore = weatherScore;
        this.estimatedDurationInMillis = estimatedDurationInMillis;
        this.latestRun = latestRun;
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
     * Get latestRun
     * @return latestRun
     */
    public PipelinelatestRun getLatestRun() {
        return latestRun;
    }

    public void setLatestRun(PipelinelatestRun latestRun) {
        this.latestRun = latestRun;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class Pipeline {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
        sb.append("    name: ").append(toIndentedString(name)).append("\n");
        sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
        sb.append("    fullName: ").append(toIndentedString(fullName)).append("\n");
        sb.append("    weatherScore: ").append(toIndentedString(weatherScore)).append("\n");
        sb.append("    estimatedDurationInMillis: ").append(toIndentedString(estimatedDurationInMillis)).append("\n");
        sb.append("    latestRun: ").append(toIndentedString(latestRun)).append("\n");
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

