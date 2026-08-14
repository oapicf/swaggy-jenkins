package org.openapitools.server.model;

import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class GenericResource   {

    private String propertyClass;
    private String displayName;
    private Integer durationInMillis;
    private String id;
    private String result;
    private String startTime;

    /**
     * Default constructor.
     */
    public GenericResource() {
    // JSON-B / Jackson
    }

    /**
     * Create GenericResource.
     *
     * @param propertyClass propertyClass
     * @param displayName displayName
     * @param durationInMillis durationInMillis
     * @param id id
     * @param result result
     * @param startTime startTime
     */
    public GenericResource(
        String propertyClass, 
        String displayName, 
        Integer durationInMillis, 
        String id, 
        String result, 
        String startTime
    ) {
        this.propertyClass = propertyClass;
        this.displayName = displayName;
        this.durationInMillis = durationInMillis;
        this.id = id;
        this.result = result;
        this.startTime = startTime;
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
     * Get durationInMillis
     * @return durationInMillis
     */
    public Integer getDurationInMillis() {
        return durationInMillis;
    }

    public void setDurationInMillis(Integer durationInMillis) {
        this.durationInMillis = durationInMillis;
    }

    /**
     * Get id
     * @return id
     */
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    /**
     * Get result
     * @return result
     */
    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    /**
     * Get startTime
     * @return startTime
     */
    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class GenericResource {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
        sb.append("    durationInMillis: ").append(toIndentedString(durationInMillis)).append("\n");
        sb.append("    id: ").append(toIndentedString(id)).append("\n");
        sb.append("    result: ").append(toIndentedString(result)).append("\n");
        sb.append("    startTime: ").append(toIndentedString(startTime)).append("\n");
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

