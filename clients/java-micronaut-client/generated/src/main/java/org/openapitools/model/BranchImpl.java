/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.model;

import java.util.Objects;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.BranchImpllinks;
import org.openapitools.model.BranchImplpermissions;
import org.openapitools.model.PipelineRunImpl;
import org.openapitools.model.StringParameterDefinition;
import com.fasterxml.jackson.annotation.*;

import javax.validation.constraints.*;
import javax.validation.Valid;
import io.micronaut.core.annotation.*;
import javax.annotation.Generated;

/**
 * BranchImpl
 */
@JsonPropertyOrder({
  BranchImpl.JSON_PROPERTY_PROPERTY_CLASS,
  BranchImpl.JSON_PROPERTY_DISPLAY_NAME,
  BranchImpl.JSON_PROPERTY_ESTIMATED_DURATION_IN_MILLIS,
  BranchImpl.JSON_PROPERTY_FULL_DISPLAY_NAME,
  BranchImpl.JSON_PROPERTY_FULL_NAME,
  BranchImpl.JSON_PROPERTY_NAME,
  BranchImpl.JSON_PROPERTY_ORGANIZATION,
  BranchImpl.JSON_PROPERTY_PARAMETERS,
  BranchImpl.JSON_PROPERTY_PERMISSIONS,
  BranchImpl.JSON_PROPERTY_WEATHER_SCORE,
  BranchImpl.JSON_PROPERTY_PULL_REQUEST,
  BranchImpl.JSON_PROPERTY_LINKS,
  BranchImpl.JSON_PROPERTY_LATEST_RUN
})
@JsonTypeName("BranchImpl")
@Generated(value="org.openapitools.codegen.languages.JavaMicronautClientCodegen", date="2022-06-04T08:08:17.621469Z[Etc/UTC]")
@Introspected
public class BranchImpl {
    public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
    private String propertyClass;

    public static final String JSON_PROPERTY_DISPLAY_NAME = "displayName";
    private String displayName;

    public static final String JSON_PROPERTY_ESTIMATED_DURATION_IN_MILLIS = "estimatedDurationInMillis";
    private Integer estimatedDurationInMillis;

    public static final String JSON_PROPERTY_FULL_DISPLAY_NAME = "fullDisplayName";
    private String fullDisplayName;

    public static final String JSON_PROPERTY_FULL_NAME = "fullName";
    private String fullName;

    public static final String JSON_PROPERTY_NAME = "name";
    private String name;

    public static final String JSON_PROPERTY_ORGANIZATION = "organization";
    private String organization;

    public static final String JSON_PROPERTY_PARAMETERS = "parameters";
    private List<StringParameterDefinition> parameters = null;

    public static final String JSON_PROPERTY_PERMISSIONS = "permissions";
    private BranchImplpermissions permissions;

    public static final String JSON_PROPERTY_WEATHER_SCORE = "weatherScore";
    private Integer weatherScore;

    public static final String JSON_PROPERTY_PULL_REQUEST = "pullRequest";
    private String pullRequest;

    public static final String JSON_PROPERTY_LINKS = "_links";
    private BranchImpllinks links;

    public static final String JSON_PROPERTY_LATEST_RUN = "latestRun";
    private PipelineRunImpl latestRun;

    public BranchImpl() {
    }

    public BranchImpl propertyClass(String propertyClass) {
        this.propertyClass = propertyClass;
        return this;
    }

    /**
     * Get propertyClass
     * @return propertyClass
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_PROPERTY_CLASS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getPropertyClass() {
        return propertyClass;
    }

    @JsonProperty(JSON_PROPERTY_PROPERTY_CLASS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setPropertyClass(String propertyClass) {
        this.propertyClass = propertyClass;
    }

    public BranchImpl displayName(String displayName) {
        this.displayName = displayName;
        return this;
    }

    /**
     * Get displayName
     * @return displayName
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_DISPLAY_NAME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getDisplayName() {
        return displayName;
    }

    @JsonProperty(JSON_PROPERTY_DISPLAY_NAME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public BranchImpl estimatedDurationInMillis(Integer estimatedDurationInMillis) {
        this.estimatedDurationInMillis = estimatedDurationInMillis;
        return this;
    }

    /**
     * Get estimatedDurationInMillis
     * @return estimatedDurationInMillis
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_ESTIMATED_DURATION_IN_MILLIS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Integer getEstimatedDurationInMillis() {
        return estimatedDurationInMillis;
    }

    @JsonProperty(JSON_PROPERTY_ESTIMATED_DURATION_IN_MILLIS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
        this.estimatedDurationInMillis = estimatedDurationInMillis;
    }

    public BranchImpl fullDisplayName(String fullDisplayName) {
        this.fullDisplayName = fullDisplayName;
        return this;
    }

    /**
     * Get fullDisplayName
     * @return fullDisplayName
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_FULL_DISPLAY_NAME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getFullDisplayName() {
        return fullDisplayName;
    }

    @JsonProperty(JSON_PROPERTY_FULL_DISPLAY_NAME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setFullDisplayName(String fullDisplayName) {
        this.fullDisplayName = fullDisplayName;
    }

    public BranchImpl fullName(String fullName) {
        this.fullName = fullName;
        return this;
    }

    /**
     * Get fullName
     * @return fullName
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_FULL_NAME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getFullName() {
        return fullName;
    }

    @JsonProperty(JSON_PROPERTY_FULL_NAME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public BranchImpl name(String name) {
        this.name = name;
        return this;
    }

    /**
     * Get name
     * @return name
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_NAME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getName() {
        return name;
    }

    @JsonProperty(JSON_PROPERTY_NAME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setName(String name) {
        this.name = name;
    }

    public BranchImpl organization(String organization) {
        this.organization = organization;
        return this;
    }

    /**
     * Get organization
     * @return organization
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_ORGANIZATION)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getOrganization() {
        return organization;
    }

    @JsonProperty(JSON_PROPERTY_ORGANIZATION)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setOrganization(String organization) {
        this.organization = organization;
    }

    public BranchImpl parameters(List<StringParameterDefinition> parameters) {
        this.parameters = parameters;
        return this;
    }

    public BranchImpl addParametersItem(StringParameterDefinition parametersItem) {
        if (this.parameters == null) {
            this.parameters = new ArrayList<>();
        }
        this.parameters.add(parametersItem);
        return this;
    }

    /**
     * Get parameters
     * @return parameters
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_PARAMETERS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public List<StringParameterDefinition> getParameters() {
        return parameters;
    }

    @JsonProperty(JSON_PROPERTY_PARAMETERS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setParameters(List<StringParameterDefinition> parameters) {
        this.parameters = parameters;
    }

    public BranchImpl permissions(BranchImplpermissions permissions) {
        this.permissions = permissions;
        return this;
    }

    /**
     * Get permissions
     * @return permissions
     **/
    @Valid
    @Nullable
    @JsonProperty(JSON_PROPERTY_PERMISSIONS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public BranchImplpermissions getPermissions() {
        return permissions;
    }

    @JsonProperty(JSON_PROPERTY_PERMISSIONS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setPermissions(BranchImplpermissions permissions) {
        this.permissions = permissions;
    }

    public BranchImpl weatherScore(Integer weatherScore) {
        this.weatherScore = weatherScore;
        return this;
    }

    /**
     * Get weatherScore
     * @return weatherScore
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_WEATHER_SCORE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Integer getWeatherScore() {
        return weatherScore;
    }

    @JsonProperty(JSON_PROPERTY_WEATHER_SCORE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setWeatherScore(Integer weatherScore) {
        this.weatherScore = weatherScore;
    }

    public BranchImpl pullRequest(String pullRequest) {
        this.pullRequest = pullRequest;
        return this;
    }

    /**
     * Get pullRequest
     * @return pullRequest
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_PULL_REQUEST)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getPullRequest() {
        return pullRequest;
    }

    @JsonProperty(JSON_PROPERTY_PULL_REQUEST)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setPullRequest(String pullRequest) {
        this.pullRequest = pullRequest;
    }

    public BranchImpl links(BranchImpllinks links) {
        this.links = links;
        return this;
    }

    /**
     * Get links
     * @return links
     **/
    @Valid
    @Nullable
    @JsonProperty(JSON_PROPERTY_LINKS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public BranchImpllinks getLinks() {
        return links;
    }

    @JsonProperty(JSON_PROPERTY_LINKS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setLinks(BranchImpllinks links) {
        this.links = links;
    }

    public BranchImpl latestRun(PipelineRunImpl latestRun) {
        this.latestRun = latestRun;
        return this;
    }

    /**
     * Get latestRun
     * @return latestRun
     **/
    @Valid
    @Nullable
    @JsonProperty(JSON_PROPERTY_LATEST_RUN)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public PipelineRunImpl getLatestRun() {
        return latestRun;
    }

    @JsonProperty(JSON_PROPERTY_LATEST_RUN)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setLatestRun(PipelineRunImpl latestRun) {
        this.latestRun = latestRun;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        BranchImpl branchImpl = (BranchImpl) o;
        return Objects.equals(this.propertyClass, branchImpl.propertyClass) &&
            Objects.equals(this.displayName, branchImpl.displayName) &&
            Objects.equals(this.estimatedDurationInMillis, branchImpl.estimatedDurationInMillis) &&
            Objects.equals(this.fullDisplayName, branchImpl.fullDisplayName) &&
            Objects.equals(this.fullName, branchImpl.fullName) &&
            Objects.equals(this.name, branchImpl.name) &&
            Objects.equals(this.organization, branchImpl.organization) &&
            Objects.equals(this.parameters, branchImpl.parameters) &&
            Objects.equals(this.permissions, branchImpl.permissions) &&
            Objects.equals(this.weatherScore, branchImpl.weatherScore) &&
            Objects.equals(this.pullRequest, branchImpl.pullRequest) &&
            Objects.equals(this.links, branchImpl.links) &&
            Objects.equals(this.latestRun, branchImpl.latestRun);
    }

    @Override
    public int hashCode() {
        return Objects.hash(propertyClass, displayName, estimatedDurationInMillis, fullDisplayName, fullName, name, organization, parameters, permissions, weatherScore, pullRequest, links, latestRun);
    }

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
    private String toIndentedString(Object o) {
        if (o == null) {
            return "null";
        }
        return o.toString().replace("\n", "\n    ");
    }

}
