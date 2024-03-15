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
import org.openapitools.model.PipelinelatestRun;
import com.fasterxml.jackson.annotation.*;

import javax.validation.constraints.*;
import javax.validation.Valid;
import io.micronaut.core.annotation.*;
import javax.annotation.Generated;

/**
 * Pipeline
 */
@JsonPropertyOrder({
  Pipeline.JSON_PROPERTY_PROPERTY_CLASS,
  Pipeline.JSON_PROPERTY_ORGANIZATION,
  Pipeline.JSON_PROPERTY_NAME,
  Pipeline.JSON_PROPERTY_DISPLAY_NAME,
  Pipeline.JSON_PROPERTY_FULL_NAME,
  Pipeline.JSON_PROPERTY_WEATHER_SCORE,
  Pipeline.JSON_PROPERTY_ESTIMATED_DURATION_IN_MILLIS,
  Pipeline.JSON_PROPERTY_LATEST_RUN
})
@JsonTypeName("Pipeline")
@Generated(value="org.openapitools.codegen.languages.JavaMicronautClientCodegen", date="2024-03-15T14:11:59.582308919Z[Etc/UTC]", comments = "Generator version: 7.4.0")
@Introspected
public class Pipeline {
    public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
    private String propertyClass;

    public static final String JSON_PROPERTY_ORGANIZATION = "organization";
    private String organization;

    public static final String JSON_PROPERTY_NAME = "name";
    private String name;

    public static final String JSON_PROPERTY_DISPLAY_NAME = "displayName";
    private String displayName;

    public static final String JSON_PROPERTY_FULL_NAME = "fullName";
    private String fullName;

    public static final String JSON_PROPERTY_WEATHER_SCORE = "weatherScore";
    private Integer weatherScore;

    public static final String JSON_PROPERTY_ESTIMATED_DURATION_IN_MILLIS = "estimatedDurationInMillis";
    private Integer estimatedDurationInMillis;

    public static final String JSON_PROPERTY_LATEST_RUN = "latestRun";
    private PipelinelatestRun latestRun;

    public Pipeline() {
    }

    public Pipeline propertyClass(String propertyClass) {
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

    public Pipeline organization(String organization) {
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

    public Pipeline name(String name) {
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

    public Pipeline displayName(String displayName) {
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

    public Pipeline fullName(String fullName) {
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

    public Pipeline weatherScore(Integer weatherScore) {
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

    public Pipeline estimatedDurationInMillis(Integer estimatedDurationInMillis) {
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

    public Pipeline latestRun(PipelinelatestRun latestRun) {
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
    public PipelinelatestRun getLatestRun() {
        return latestRun;
    }

    @JsonProperty(JSON_PROPERTY_LATEST_RUN)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setLatestRun(PipelinelatestRun latestRun) {
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
        Pipeline pipeline = (Pipeline) o;
        return Objects.equals(this.propertyClass, pipeline.propertyClass) &&
            Objects.equals(this.organization, pipeline.organization) &&
            Objects.equals(this.name, pipeline.name) &&
            Objects.equals(this.displayName, pipeline.displayName) &&
            Objects.equals(this.fullName, pipeline.fullName) &&
            Objects.equals(this.weatherScore, pipeline.weatherScore) &&
            Objects.equals(this.estimatedDurationInMillis, pipeline.estimatedDurationInMillis) &&
            Objects.equals(this.latestRun, pipeline.latestRun);
    }

    @Override
    public int hashCode() {
        return Objects.hash(propertyClass, organization, name, displayName, fullName, weatherScore, estimatedDurationInMillis, latestRun);
    }

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
    private String toIndentedString(Object o) {
        if (o == null) {
            return "null";
        }
        return o.toString().replace("\n", "\n    ");
    }

}

