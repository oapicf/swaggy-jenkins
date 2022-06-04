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
import org.openapitools.model.Link;
import com.fasterxml.jackson.annotation.*;

import javax.validation.constraints.*;
import javax.validation.Valid;
import io.micronaut.core.annotation.*;
import javax.annotation.Generated;

/**
 * PipelineStepImpllinks
 */
@JsonPropertyOrder({
  PipelineStepImpllinks.JSON_PROPERTY_SELF,
  PipelineStepImpllinks.JSON_PROPERTY_ACTIONS,
  PipelineStepImpllinks.JSON_PROPERTY_PROPERTY_CLASS
})
@JsonTypeName("PipelineStepImpllinks")
@Generated(value="org.openapitools.codegen.languages.JavaMicronautClientCodegen", date="2022-06-04T08:08:17.621469Z[Etc/UTC]")
@Introspected
public class PipelineStepImpllinks {
    public static final String JSON_PROPERTY_SELF = "self";
    private Link self;

    public static final String JSON_PROPERTY_ACTIONS = "actions";
    private Link actions;

    public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
    private String propertyClass;

    public PipelineStepImpllinks() {
    }

    public PipelineStepImpllinks self(Link self) {
        this.self = self;
        return this;
    }

    /**
     * Get self
     * @return self
     **/
    @Valid
    @Nullable
    @JsonProperty(JSON_PROPERTY_SELF)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Link getSelf() {
        return self;
    }

    @JsonProperty(JSON_PROPERTY_SELF)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setSelf(Link self) {
        this.self = self;
    }

    public PipelineStepImpllinks actions(Link actions) {
        this.actions = actions;
        return this;
    }

    /**
     * Get actions
     * @return actions
     **/
    @Valid
    @Nullable
    @JsonProperty(JSON_PROPERTY_ACTIONS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Link getActions() {
        return actions;
    }

    @JsonProperty(JSON_PROPERTY_ACTIONS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setActions(Link actions) {
        this.actions = actions;
    }

    public PipelineStepImpllinks propertyClass(String propertyClass) {
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

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        PipelineStepImpllinks pipelineStepImpllinks = (PipelineStepImpllinks) o;
        return Objects.equals(this.self, pipelineStepImpllinks.self) &&
            Objects.equals(this.actions, pipelineStepImpllinks.actions) &&
            Objects.equals(this.propertyClass, pipelineStepImpllinks.propertyClass);
    }

    @Override
    public int hashCode() {
        return Objects.hash(self, actions, propertyClass);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class PipelineStepImpllinks {\n");
        sb.append("    self: ").append(toIndentedString(self)).append("\n");
        sb.append("    actions: ").append(toIndentedString(actions)).append("\n");
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
