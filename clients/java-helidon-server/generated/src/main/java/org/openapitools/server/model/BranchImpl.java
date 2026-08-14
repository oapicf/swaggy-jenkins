package org.openapitools.server.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.server.model.BranchImpllinks;
import org.openapitools.server.model.BranchImplpermissions;
import org.openapitools.server.model.PipelineRunImpl;
import org.openapitools.server.model.StringParameterDefinition;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class BranchImpl   {

    private String propertyClass;
    private String displayName;
    private Integer estimatedDurationInMillis;
    private String fullDisplayName;
    private String fullName;
    private String name;
    private String organization;
    private List<@Valid StringParameterDefinition> parameters = new ArrayList<>();
    private BranchImplpermissions permissions;
    private Integer weatherScore;
    private String pullRequest;
    private BranchImpllinks links;
    private PipelineRunImpl latestRun;

    /**
     * Default constructor.
     */
    public BranchImpl() {
    // JSON-B / Jackson
    }

    /**
     * Create BranchImpl.
     *
     * @param propertyClass propertyClass
     * @param displayName displayName
     * @param estimatedDurationInMillis estimatedDurationInMillis
     * @param fullDisplayName fullDisplayName
     * @param fullName fullName
     * @param name name
     * @param organization organization
     * @param parameters parameters
     * @param permissions permissions
     * @param weatherScore weatherScore
     * @param pullRequest pullRequest
     * @param links links
     * @param latestRun latestRun
     */
    public BranchImpl(
        String propertyClass, 
        String displayName, 
        Integer estimatedDurationInMillis, 
        String fullDisplayName, 
        String fullName, 
        String name, 
        String organization, 
        List<@Valid StringParameterDefinition> parameters, 
        BranchImplpermissions permissions, 
        Integer weatherScore, 
        String pullRequest, 
        BranchImpllinks links, 
        PipelineRunImpl latestRun
    ) {
        this.propertyClass = propertyClass;
        this.displayName = displayName;
        this.estimatedDurationInMillis = estimatedDurationInMillis;
        this.fullDisplayName = fullDisplayName;
        this.fullName = fullName;
        this.name = name;
        this.organization = organization;
        this.parameters = parameters;
        this.permissions = permissions;
        this.weatherScore = weatherScore;
        this.pullRequest = pullRequest;
        this.links = links;
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
     * Get fullDisplayName
     * @return fullDisplayName
     */
    public String getFullDisplayName() {
        return fullDisplayName;
    }

    public void setFullDisplayName(String fullDisplayName) {
        this.fullDisplayName = fullDisplayName;
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
     * Get parameters
     * @return parameters
     */
    public List<@Valid StringParameterDefinition> getParameters() {
        return parameters;
    }

    public void setParameters(List<@Valid StringParameterDefinition> parameters) {
        this.parameters = parameters;
    }

    /**
     * Get permissions
     * @return permissions
     */
    public BranchImplpermissions getPermissions() {
        return permissions;
    }

    public void setPermissions(BranchImplpermissions permissions) {
        this.permissions = permissions;
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
     * Get pullRequest
     * @return pullRequest
     */
    public String getPullRequest() {
        return pullRequest;
    }

    public void setPullRequest(String pullRequest) {
        this.pullRequest = pullRequest;
    }

    /**
     * Get links
     * @return links
     */
    public BranchImpllinks getLinks() {
        return links;
    }

    public void setLinks(BranchImpllinks links) {
        this.links = links;
    }

    /**
     * Get latestRun
     * @return latestRun
     */
    public PipelineRunImpl getLatestRun() {
        return latestRun;
    }

    public void setLatestRun(PipelineRunImpl latestRun) {
        this.latestRun = latestRun;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class BranchImpl {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
        sb.append("    estimatedDurationInMillis: ").append(toIndentedString(estimatedDurationInMillis)).append("\n");
        sb.append("    fullDisplayName: ").append(toIndentedString(fullDisplayName)).append("\n");
        sb.append("    fullName: ").append(toIndentedString(fullName)).append("\n");
        sb.append("    name: ").append(toIndentedString(name)).append("\n");
        sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
        sb.append("    parameters: ").append(toIndentedString(parameters)).append("\n");
        sb.append("    permissions: ").append(toIndentedString(permissions)).append("\n");
        sb.append("    weatherScore: ").append(toIndentedString(weatherScore)).append("\n");
        sb.append("    pullRequest: ").append(toIndentedString(pullRequest)).append("\n");
        sb.append("    links: ").append(toIndentedString(links)).append("\n");
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

