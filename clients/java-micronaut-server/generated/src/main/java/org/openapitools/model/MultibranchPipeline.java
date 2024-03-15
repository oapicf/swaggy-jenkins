/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.model;

import java.util.Objects;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import com.fasterxml.jackson.annotation.*;

import javax.validation.constraints.*;
import javax.validation.Valid;
import io.micronaut.core.annotation.*;
import javax.annotation.Generated;
import io.swagger.v3.oas.annotations.media.Schema;

/**
 * MultibranchPipeline
 */
@JsonPropertyOrder({
  MultibranchPipeline.JSON_PROPERTY_DISPLAY_NAME,
  MultibranchPipeline.JSON_PROPERTY_ESTIMATED_DURATION_IN_MILLIS,
  MultibranchPipeline.JSON_PROPERTY_LATEST_RUN,
  MultibranchPipeline.JSON_PROPERTY_NAME,
  MultibranchPipeline.JSON_PROPERTY_ORGANIZATION,
  MultibranchPipeline.JSON_PROPERTY_WEATHER_SCORE,
  MultibranchPipeline.JSON_PROPERTY_BRANCH_NAMES,
  MultibranchPipeline.JSON_PROPERTY_NUMBER_OF_FAILING_BRANCHES,
  MultibranchPipeline.JSON_PROPERTY_NUMBER_OF_FAILING_PULL_REQUESTS,
  MultibranchPipeline.JSON_PROPERTY_NUMBER_OF_SUCCESSFUL_BRANCHES,
  MultibranchPipeline.JSON_PROPERTY_NUMBER_OF_SUCCESSFUL_PULL_REQUESTS,
  MultibranchPipeline.JSON_PROPERTY_TOTAL_NUMBER_OF_BRANCHES,
  MultibranchPipeline.JSON_PROPERTY_TOTAL_NUMBER_OF_PULL_REQUESTS,
  MultibranchPipeline.JSON_PROPERTY_PROPERTY_CLASS
})
@JsonTypeName("MultibranchPipeline")
@Generated(value="org.openapitools.codegen.languages.JavaMicronautServerCodegen", date="2024-03-15T14:12:15.717235233Z[Etc/UTC]", comments = "Generator version: 7.4.0")
@Introspected
public class MultibranchPipeline {
    public static final String JSON_PROPERTY_DISPLAY_NAME = "displayName";
    private String displayName;

    public static final String JSON_PROPERTY_ESTIMATED_DURATION_IN_MILLIS = "estimatedDurationInMillis";
    private Integer estimatedDurationInMillis;

    public static final String JSON_PROPERTY_LATEST_RUN = "latestRun";
    private String latestRun;

    public static final String JSON_PROPERTY_NAME = "name";
    private String name;

    public static final String JSON_PROPERTY_ORGANIZATION = "organization";
    private String organization;

    public static final String JSON_PROPERTY_WEATHER_SCORE = "weatherScore";
    private Integer weatherScore;

    public static final String JSON_PROPERTY_BRANCH_NAMES = "branchNames";
    private List<String> branchNames = null;

    public static final String JSON_PROPERTY_NUMBER_OF_FAILING_BRANCHES = "numberOfFailingBranches";
    private Integer numberOfFailingBranches;

    public static final String JSON_PROPERTY_NUMBER_OF_FAILING_PULL_REQUESTS = "numberOfFailingPullRequests";
    private Integer numberOfFailingPullRequests;

    public static final String JSON_PROPERTY_NUMBER_OF_SUCCESSFUL_BRANCHES = "numberOfSuccessfulBranches";
    private Integer numberOfSuccessfulBranches;

    public static final String JSON_PROPERTY_NUMBER_OF_SUCCESSFUL_PULL_REQUESTS = "numberOfSuccessfulPullRequests";
    private Integer numberOfSuccessfulPullRequests;

    public static final String JSON_PROPERTY_TOTAL_NUMBER_OF_BRANCHES = "totalNumberOfBranches";
    private Integer totalNumberOfBranches;

    public static final String JSON_PROPERTY_TOTAL_NUMBER_OF_PULL_REQUESTS = "totalNumberOfPullRequests";
    private Integer totalNumberOfPullRequests;

    public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
    private String propertyClass;

    public MultibranchPipeline() {
    }

    public MultibranchPipeline displayName(String displayName) {
        this.displayName = displayName;
        return this;
    }

    /**
     * Get displayName
     * @return displayName
     **/
    @Nullable
    @Schema(name = "displayName", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
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

    public MultibranchPipeline estimatedDurationInMillis(Integer estimatedDurationInMillis) {
        this.estimatedDurationInMillis = estimatedDurationInMillis;
        return this;
    }

    /**
     * Get estimatedDurationInMillis
     * @return estimatedDurationInMillis
     **/
    @Nullable
    @Schema(name = "estimatedDurationInMillis", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
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

    public MultibranchPipeline latestRun(String latestRun) {
        this.latestRun = latestRun;
        return this;
    }

    /**
     * Get latestRun
     * @return latestRun
     **/
    @Nullable
    @Schema(name = "latestRun", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    @JsonProperty(JSON_PROPERTY_LATEST_RUN)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getLatestRun() {
        return latestRun;
    }

    @JsonProperty(JSON_PROPERTY_LATEST_RUN)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setLatestRun(String latestRun) {
        this.latestRun = latestRun;
    }

    public MultibranchPipeline name(String name) {
        this.name = name;
        return this;
    }

    /**
     * Get name
     * @return name
     **/
    @Nullable
    @Schema(name = "name", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
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

    public MultibranchPipeline organization(String organization) {
        this.organization = organization;
        return this;
    }

    /**
     * Get organization
     * @return organization
     **/
    @Nullable
    @Schema(name = "organization", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
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

    public MultibranchPipeline weatherScore(Integer weatherScore) {
        this.weatherScore = weatherScore;
        return this;
    }

    /**
     * Get weatherScore
     * @return weatherScore
     **/
    @Nullable
    @Schema(name = "weatherScore", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
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

    public MultibranchPipeline branchNames(List<String> branchNames) {
        this.branchNames = branchNames;
        return this;
    }

    public MultibranchPipeline addBranchNamesItem(String branchNamesItem) {
        if (this.branchNames == null) {
            this.branchNames = new ArrayList<>();
        }
        this.branchNames.add(branchNamesItem);
        return this;
    }

    /**
     * Get branchNames
     * @return branchNames
     **/
    @Nullable
    @Schema(name = "branchNames", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    @JsonProperty(JSON_PROPERTY_BRANCH_NAMES)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public List<String> getBranchNames() {
        return branchNames;
    }

    @JsonProperty(JSON_PROPERTY_BRANCH_NAMES)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setBranchNames(List<String> branchNames) {
        this.branchNames = branchNames;
    }

    public MultibranchPipeline numberOfFailingBranches(Integer numberOfFailingBranches) {
        this.numberOfFailingBranches = numberOfFailingBranches;
        return this;
    }

    /**
     * Get numberOfFailingBranches
     * @return numberOfFailingBranches
     **/
    @Nullable
    @Schema(name = "numberOfFailingBranches", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    @JsonProperty(JSON_PROPERTY_NUMBER_OF_FAILING_BRANCHES)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Integer getNumberOfFailingBranches() {
        return numberOfFailingBranches;
    }

    @JsonProperty(JSON_PROPERTY_NUMBER_OF_FAILING_BRANCHES)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setNumberOfFailingBranches(Integer numberOfFailingBranches) {
        this.numberOfFailingBranches = numberOfFailingBranches;
    }

    public MultibranchPipeline numberOfFailingPullRequests(Integer numberOfFailingPullRequests) {
        this.numberOfFailingPullRequests = numberOfFailingPullRequests;
        return this;
    }

    /**
     * Get numberOfFailingPullRequests
     * @return numberOfFailingPullRequests
     **/
    @Nullable
    @Schema(name = "numberOfFailingPullRequests", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    @JsonProperty(JSON_PROPERTY_NUMBER_OF_FAILING_PULL_REQUESTS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Integer getNumberOfFailingPullRequests() {
        return numberOfFailingPullRequests;
    }

    @JsonProperty(JSON_PROPERTY_NUMBER_OF_FAILING_PULL_REQUESTS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setNumberOfFailingPullRequests(Integer numberOfFailingPullRequests) {
        this.numberOfFailingPullRequests = numberOfFailingPullRequests;
    }

    public MultibranchPipeline numberOfSuccessfulBranches(Integer numberOfSuccessfulBranches) {
        this.numberOfSuccessfulBranches = numberOfSuccessfulBranches;
        return this;
    }

    /**
     * Get numberOfSuccessfulBranches
     * @return numberOfSuccessfulBranches
     **/
    @Nullable
    @Schema(name = "numberOfSuccessfulBranches", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    @JsonProperty(JSON_PROPERTY_NUMBER_OF_SUCCESSFUL_BRANCHES)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Integer getNumberOfSuccessfulBranches() {
        return numberOfSuccessfulBranches;
    }

    @JsonProperty(JSON_PROPERTY_NUMBER_OF_SUCCESSFUL_BRANCHES)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setNumberOfSuccessfulBranches(Integer numberOfSuccessfulBranches) {
        this.numberOfSuccessfulBranches = numberOfSuccessfulBranches;
    }

    public MultibranchPipeline numberOfSuccessfulPullRequests(Integer numberOfSuccessfulPullRequests) {
        this.numberOfSuccessfulPullRequests = numberOfSuccessfulPullRequests;
        return this;
    }

    /**
     * Get numberOfSuccessfulPullRequests
     * @return numberOfSuccessfulPullRequests
     **/
    @Nullable
    @Schema(name = "numberOfSuccessfulPullRequests", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    @JsonProperty(JSON_PROPERTY_NUMBER_OF_SUCCESSFUL_PULL_REQUESTS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Integer getNumberOfSuccessfulPullRequests() {
        return numberOfSuccessfulPullRequests;
    }

    @JsonProperty(JSON_PROPERTY_NUMBER_OF_SUCCESSFUL_PULL_REQUESTS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setNumberOfSuccessfulPullRequests(Integer numberOfSuccessfulPullRequests) {
        this.numberOfSuccessfulPullRequests = numberOfSuccessfulPullRequests;
    }

    public MultibranchPipeline totalNumberOfBranches(Integer totalNumberOfBranches) {
        this.totalNumberOfBranches = totalNumberOfBranches;
        return this;
    }

    /**
     * Get totalNumberOfBranches
     * @return totalNumberOfBranches
     **/
    @Nullable
    @Schema(name = "totalNumberOfBranches", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    @JsonProperty(JSON_PROPERTY_TOTAL_NUMBER_OF_BRANCHES)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Integer getTotalNumberOfBranches() {
        return totalNumberOfBranches;
    }

    @JsonProperty(JSON_PROPERTY_TOTAL_NUMBER_OF_BRANCHES)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setTotalNumberOfBranches(Integer totalNumberOfBranches) {
        this.totalNumberOfBranches = totalNumberOfBranches;
    }

    public MultibranchPipeline totalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
        this.totalNumberOfPullRequests = totalNumberOfPullRequests;
        return this;
    }

    /**
     * Get totalNumberOfPullRequests
     * @return totalNumberOfPullRequests
     **/
    @Nullable
    @Schema(name = "totalNumberOfPullRequests", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    @JsonProperty(JSON_PROPERTY_TOTAL_NUMBER_OF_PULL_REQUESTS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Integer getTotalNumberOfPullRequests() {
        return totalNumberOfPullRequests;
    }

    @JsonProperty(JSON_PROPERTY_TOTAL_NUMBER_OF_PULL_REQUESTS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setTotalNumberOfPullRequests(Integer totalNumberOfPullRequests) {
        this.totalNumberOfPullRequests = totalNumberOfPullRequests;
    }

    public MultibranchPipeline propertyClass(String propertyClass) {
        this.propertyClass = propertyClass;
        return this;
    }

    /**
     * Get propertyClass
     * @return propertyClass
     **/
    @Nullable
    @Schema(name = "_class", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
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

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        MultibranchPipeline multibranchPipeline = (MultibranchPipeline) o;
        return Objects.equals(this.displayName, multibranchPipeline.displayName) &&
            Objects.equals(this.estimatedDurationInMillis, multibranchPipeline.estimatedDurationInMillis) &&
            Objects.equals(this.latestRun, multibranchPipeline.latestRun) &&
            Objects.equals(this.name, multibranchPipeline.name) &&
            Objects.equals(this.organization, multibranchPipeline.organization) &&
            Objects.equals(this.weatherScore, multibranchPipeline.weatherScore) &&
            Objects.equals(this.branchNames, multibranchPipeline.branchNames) &&
            Objects.equals(this.numberOfFailingBranches, multibranchPipeline.numberOfFailingBranches) &&
            Objects.equals(this.numberOfFailingPullRequests, multibranchPipeline.numberOfFailingPullRequests) &&
            Objects.equals(this.numberOfSuccessfulBranches, multibranchPipeline.numberOfSuccessfulBranches) &&
            Objects.equals(this.numberOfSuccessfulPullRequests, multibranchPipeline.numberOfSuccessfulPullRequests) &&
            Objects.equals(this.totalNumberOfBranches, multibranchPipeline.totalNumberOfBranches) &&
            Objects.equals(this.totalNumberOfPullRequests, multibranchPipeline.totalNumberOfPullRequests) &&
            Objects.equals(this.propertyClass, multibranchPipeline.propertyClass);
    }

    @Override
    public int hashCode() {
        return Objects.hash(displayName, estimatedDurationInMillis, latestRun, name, organization, weatherScore, branchNames, numberOfFailingBranches, numberOfFailingPullRequests, numberOfSuccessfulBranches, numberOfSuccessfulPullRequests, totalNumberOfBranches, totalNumberOfPullRequests, propertyClass);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class MultibranchPipeline {\n");
        sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
        sb.append("    estimatedDurationInMillis: ").append(toIndentedString(estimatedDurationInMillis)).append("\n");
        sb.append("    latestRun: ").append(toIndentedString(latestRun)).append("\n");
        sb.append("    name: ").append(toIndentedString(name)).append("\n");
        sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
        sb.append("    weatherScore: ").append(toIndentedString(weatherScore)).append("\n");
        sb.append("    branchNames: ").append(toIndentedString(branchNames)).append("\n");
        sb.append("    numberOfFailingBranches: ").append(toIndentedString(numberOfFailingBranches)).append("\n");
        sb.append("    numberOfFailingPullRequests: ").append(toIndentedString(numberOfFailingPullRequests)).append("\n");
        sb.append("    numberOfSuccessfulBranches: ").append(toIndentedString(numberOfSuccessfulBranches)).append("\n");
        sb.append("    numberOfSuccessfulPullRequests: ").append(toIndentedString(numberOfSuccessfulPullRequests)).append("\n");
        sb.append("    totalNumberOfBranches: ").append(toIndentedString(totalNumberOfBranches)).append("\n");
        sb.append("    totalNumberOfPullRequests: ").append(toIndentedString(totalNumberOfPullRequests)).append("\n");
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
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

