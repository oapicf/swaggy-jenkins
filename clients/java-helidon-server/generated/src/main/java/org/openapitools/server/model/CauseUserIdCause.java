package org.openapitools.server.model;

import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class CauseUserIdCause   {

    private String propertyClass;
    private String shortDescription;
    private String userId;
    private String userName;

    /**
     * Default constructor.
     */
    public CauseUserIdCause() {
    // JSON-B / Jackson
    }

    /**
     * Create CauseUserIdCause.
     *
     * @param propertyClass propertyClass
     * @param shortDescription shortDescription
     * @param userId userId
     * @param userName userName
     */
    public CauseUserIdCause(
        String propertyClass, 
        String shortDescription, 
        String userId, 
        String userName
    ) {
        this.propertyClass = propertyClass;
        this.shortDescription = shortDescription;
        this.userId = userId;
        this.userName = userName;
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
     * Get shortDescription
     * @return shortDescription
     */
    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    /**
     * Get userId
     * @return userId
     */
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    /**
     * Get userName
     * @return userName
     */
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class CauseUserIdCause {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    shortDescription: ").append(toIndentedString(shortDescription)).append("\n");
        sb.append("    userId: ").append(toIndentedString(userId)).append("\n");
        sb.append("    userName: ").append(toIndentedString(userName)).append("\n");
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

