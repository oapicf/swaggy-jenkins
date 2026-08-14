package org.openapitools.server.model;

import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class GithubRepositorypermissions   {

    private Boolean admin;
    private Boolean push;
    private Boolean pull;
    private String propertyClass;

    /**
     * Default constructor.
     */
    public GithubRepositorypermissions() {
    // JSON-B / Jackson
    }

    /**
     * Create GithubRepositorypermissions.
     *
     * @param admin admin
     * @param push push
     * @param pull pull
     * @param propertyClass propertyClass
     */
    public GithubRepositorypermissions(
        Boolean admin, 
        Boolean push, 
        Boolean pull, 
        String propertyClass
    ) {
        this.admin = admin;
        this.push = push;
        this.pull = pull;
        this.propertyClass = propertyClass;
    }



    /**
     * Get admin
     * @return admin
     */
    public Boolean getAdmin() {
        return admin;
    }

    public void setAdmin(Boolean admin) {
        this.admin = admin;
    }

    /**
     * Get push
     * @return push
     */
    public Boolean getPush() {
        return push;
    }

    public void setPush(Boolean push) {
        this.push = push;
    }

    /**
     * Get pull
     * @return pull
     */
    public Boolean getPull() {
        return pull;
    }

    public void setPull(Boolean pull) {
        this.pull = pull;
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
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class GithubRepositorypermissions {\n");
        
        sb.append("    admin: ").append(toIndentedString(admin)).append("\n");
        sb.append("    push: ").append(toIndentedString(push)).append("\n");
        sb.append("    pull: ").append(toIndentedString(pull)).append("\n");
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
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

