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
import org.openapitools.model.ExtensionClassImpl;
import com.fasterxml.jackson.annotation.*;

import javax.validation.constraints.*;
import javax.validation.Valid;
import io.micronaut.core.annotation.*;
import javax.annotation.Generated;
import io.swagger.v3.oas.annotations.media.Schema;

/**
 * ExtensionClassContainerImpl1map
 */
@JsonPropertyOrder({
  ExtensionClassContainerImpl1map.JSON_PROPERTY_IO_JENKINS_BLUEOCEAN_SERVICE_EMBEDDED_REST_PIPELINE_IMPL,
  ExtensionClassContainerImpl1map.JSON_PROPERTY_IO_JENKINS_BLUEOCEAN_SERVICE_EMBEDDED_REST_MULTI_BRANCH_PIPELINE_IMPL,
  ExtensionClassContainerImpl1map.JSON_PROPERTY_PROPERTY_CLASS
})
@JsonTypeName("ExtensionClassContainerImpl1map")
@Generated(value="org.openapitools.codegen.languages.JavaMicronautServerCodegen", date="2024-03-15T14:12:15.717235233Z[Etc/UTC]", comments = "Generator version: 7.4.0")
@Introspected
public class ExtensionClassContainerImpl1map {
    public static final String JSON_PROPERTY_IO_JENKINS_BLUEOCEAN_SERVICE_EMBEDDED_REST_PIPELINE_IMPL = "io.jenkins.blueocean.service.embedded.rest.PipelineImpl";
    private ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;

    public static final String JSON_PROPERTY_IO_JENKINS_BLUEOCEAN_SERVICE_EMBEDDED_REST_MULTI_BRANCH_PIPELINE_IMPL = "io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl";
    private ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;

    public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
    private String propertyClass;

    public ExtensionClassContainerImpl1map() {
    }

    public ExtensionClassContainerImpl1map ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl(ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl) {
        this.ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
        return this;
    }

    /**
     * Get ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl
     * @return ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl
     **/
    @Valid
    @Nullable
    @Schema(name = "io.jenkins.blueocean.service.embedded.rest.PipelineImpl", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    @JsonProperty(JSON_PROPERTY_IO_JENKINS_BLUEOCEAN_SERVICE_EMBEDDED_REST_PIPELINE_IMPL)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public ExtensionClassImpl getIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl() {
        return ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
    }

    @JsonProperty(JSON_PROPERTY_IO_JENKINS_BLUEOCEAN_SERVICE_EMBEDDED_REST_PIPELINE_IMPL)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl(ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl) {
        this.ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
    }

    public ExtensionClassContainerImpl1map ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl(ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl) {
        this.ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
        return this;
    }

    /**
     * Get ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl
     * @return ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl
     **/
    @Valid
    @Nullable
    @Schema(name = "io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    @JsonProperty(JSON_PROPERTY_IO_JENKINS_BLUEOCEAN_SERVICE_EMBEDDED_REST_MULTI_BRANCH_PIPELINE_IMPL)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public ExtensionClassImpl getIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl() {
        return ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
    }

    @JsonProperty(JSON_PROPERTY_IO_JENKINS_BLUEOCEAN_SERVICE_EMBEDDED_REST_MULTI_BRANCH_PIPELINE_IMPL)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl(ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl) {
        this.ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
    }

    public ExtensionClassContainerImpl1map propertyClass(String propertyClass) {
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
        ExtensionClassContainerImpl1map extensionClassContainerImpl1map = (ExtensionClassContainerImpl1map) o;
        return Objects.equals(this.ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl, extensionClassContainerImpl1map.ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl) &&
            Objects.equals(this.ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl, extensionClassContainerImpl1map.ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl) &&
            Objects.equals(this.propertyClass, extensionClassContainerImpl1map.propertyClass);
    }

    @Override
    public int hashCode() {
        return Objects.hash(ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl, ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl, propertyClass);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class ExtensionClassContainerImpl1map {\n");
        sb.append("    ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: ").append(toIndentedString(ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl)).append("\n");
        sb.append("    ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: ").append(toIndentedString(ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl)).append("\n");
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

