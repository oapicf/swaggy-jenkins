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
import org.openapitools.model.Link;
import com.fasterxml.jackson.annotation.*;

import javax.validation.constraints.*;
import javax.validation.Valid;
import io.micronaut.core.annotation.*;
import javax.annotation.Generated;
import io.swagger.v3.oas.annotations.media.Schema;

/**
 * ExtensionClassImpllinks
 */
@JsonPropertyOrder({
  ExtensionClassImpllinks.JSON_PROPERTY_SELF,
  ExtensionClassImpllinks.JSON_PROPERTY_PROPERTY_CLASS
})
@JsonTypeName("ExtensionClassImpllinks")
@Generated(value="org.openapitools.codegen.languages.JavaMicronautServerCodegen", date="2024-03-15T14:12:15.717235233Z[Etc/UTC]", comments = "Generator version: 7.4.0")
@Introspected
public class ExtensionClassImpllinks {
    public static final String JSON_PROPERTY_SELF = "self";
    private Link self;

    public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
    private String propertyClass;

    public ExtensionClassImpllinks() {
    }

    public ExtensionClassImpllinks self(Link self) {
        this.self = self;
        return this;
    }

    /**
     * Get self
     * @return self
     **/
    @Valid
    @Nullable
    @Schema(name = "self", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
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

    public ExtensionClassImpllinks propertyClass(String propertyClass) {
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
        ExtensionClassImpllinks extensionClassImpllinks = (ExtensionClassImpllinks) o;
        return Objects.equals(this.self, extensionClassImpllinks.self) &&
            Objects.equals(this.propertyClass, extensionClassImpllinks.propertyClass);
    }

    @Override
    public int hashCode() {
        return Objects.hash(self, propertyClass);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class ExtensionClassImpllinks {\n");
        sb.append("    self: ").append(toIndentedString(self)).append("\n");
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

