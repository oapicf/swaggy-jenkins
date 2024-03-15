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
import org.openapitools.model.QueueBlockedItem;
import com.fasterxml.jackson.annotation.*;

import javax.validation.constraints.*;
import javax.validation.Valid;
import io.micronaut.core.annotation.*;
import javax.annotation.Generated;

/**
 * Queue
 */
@JsonPropertyOrder({
  Queue.JSON_PROPERTY_PROPERTY_CLASS,
  Queue.JSON_PROPERTY_ITEMS
})
@JsonTypeName("Queue")
@Generated(value="org.openapitools.codegen.languages.JavaMicronautClientCodegen", date="2024-03-15T14:11:59.582308919Z[Etc/UTC]", comments = "Generator version: 7.4.0")
@Introspected
public class Queue {
    public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
    private String propertyClass;

    public static final String JSON_PROPERTY_ITEMS = "items";
    private List<@Valid QueueBlockedItem> items = null;

    public Queue() {
    }

    public Queue propertyClass(String propertyClass) {
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

    public Queue items(List<@Valid QueueBlockedItem> items) {
        this.items = items;
        return this;
    }

    public Queue addItemsItem(QueueBlockedItem itemsItem) {
        if (this.items == null) {
            this.items = new ArrayList<>();
        }
        this.items.add(itemsItem);
        return this;
    }

    /**
     * Get items
     * @return items
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_ITEMS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public List<@Valid QueueBlockedItem> getItems() {
        return items;
    }

    @JsonProperty(JSON_PROPERTY_ITEMS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setItems(List<@Valid QueueBlockedItem> items) {
        this.items = items;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Queue queue = (Queue) o;
        return Objects.equals(this.propertyClass, queue.propertyClass) &&
            Objects.equals(this.items, queue.items);
    }

    @Override
    public int hashCode() {
        return Objects.hash(propertyClass, items);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class Queue {\n");
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    items: ").append(toIndentedString(items)).append("\n");
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

