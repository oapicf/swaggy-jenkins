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
import com.fasterxml.jackson.annotation.*;

import javax.validation.constraints.*;
import javax.validation.Valid;
import io.micronaut.core.annotation.*;
import javax.annotation.Generated;

/**
 * EmptyChangeLogSet
 */
@JsonPropertyOrder({
  EmptyChangeLogSet.JSON_PROPERTY_PROPERTY_CLASS,
  EmptyChangeLogSet.JSON_PROPERTY_KIND
})
@JsonTypeName("EmptyChangeLogSet")
@Generated(value="org.openapitools.codegen.languages.JavaMicronautClientCodegen", date="2024-03-15T14:11:59.582308919Z[Etc/UTC]", comments = "Generator version: 7.4.0")
@Introspected
public class EmptyChangeLogSet {
    public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
    private String propertyClass;

    public static final String JSON_PROPERTY_KIND = "kind";
    private String kind;

    public EmptyChangeLogSet() {
    }

    public EmptyChangeLogSet propertyClass(String propertyClass) {
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

    public EmptyChangeLogSet kind(String kind) {
        this.kind = kind;
        return this;
    }

    /**
     * Get kind
     * @return kind
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_KIND)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getKind() {
        return kind;
    }

    @JsonProperty(JSON_PROPERTY_KIND)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setKind(String kind) {
        this.kind = kind;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        EmptyChangeLogSet emptyChangeLogSet = (EmptyChangeLogSet) o;
        return Objects.equals(this.propertyClass, emptyChangeLogSet.propertyClass) &&
            Objects.equals(this.kind, emptyChangeLogSet.kind);
    }

    @Override
    public int hashCode() {
        return Objects.hash(propertyClass, kind);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class EmptyChangeLogSet {\n");
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    kind: ").append(toIndentedString(kind)).append("\n");
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

