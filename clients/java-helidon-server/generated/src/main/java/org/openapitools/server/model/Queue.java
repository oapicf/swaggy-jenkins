package org.openapitools.server.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.server.model.QueueBlockedItem;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class Queue   {

    private String propertyClass;
    private List<@Valid QueueBlockedItem> items = new ArrayList<>();

    /**
     * Default constructor.
     */
    public Queue() {
    // JSON-B / Jackson
    }

    /**
     * Create Queue.
     *
     * @param propertyClass propertyClass
     * @param items items
     */
    public Queue(
        String propertyClass, 
        List<@Valid QueueBlockedItem> items
    ) {
        this.propertyClass = propertyClass;
        this.items = items;
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
     * Get items
     * @return items
     */
    public List<@Valid QueueBlockedItem> getItems() {
        return items;
    }

    public void setItems(List<@Valid QueueBlockedItem> items) {
        this.items = items;
    }

    /**
      * Create a string representation of this pojo.
    **/
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
    private static String toIndentedString(Object o) {
        return o == null ? "null" : o.toString().replace("\n", "\n    ");
    }
}

