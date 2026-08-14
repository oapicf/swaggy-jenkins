package org.openapitools.server.model;

import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class BranchImplpermissions   {

    private Boolean create;
    private Boolean read;
    private Boolean start;
    private Boolean stop;
    private String propertyClass;

    /**
     * Default constructor.
     */
    public BranchImplpermissions() {
    // JSON-B / Jackson
    }

    /**
     * Create BranchImplpermissions.
     *
     * @param create create
     * @param read read
     * @param start start
     * @param stop stop
     * @param propertyClass propertyClass
     */
    public BranchImplpermissions(
        Boolean create, 
        Boolean read, 
        Boolean start, 
        Boolean stop, 
        String propertyClass
    ) {
        this.create = create;
        this.read = read;
        this.start = start;
        this.stop = stop;
        this.propertyClass = propertyClass;
    }



    /**
     * Get create
     * @return create
     */
    public Boolean getCreate() {
        return create;
    }

    public void setCreate(Boolean create) {
        this.create = create;
    }

    /**
     * Get read
     * @return read
     */
    public Boolean getRead() {
        return read;
    }

    public void setRead(Boolean read) {
        this.read = read;
    }

    /**
     * Get start
     * @return start
     */
    public Boolean getStart() {
        return start;
    }

    public void setStart(Boolean start) {
        this.start = start;
    }

    /**
     * Get stop
     * @return stop
     */
    public Boolean getStop() {
        return stop;
    }

    public void setStop(Boolean stop) {
        this.stop = stop;
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
        sb.append("class BranchImplpermissions {\n");
        
        sb.append("    create: ").append(toIndentedString(create)).append("\n");
        sb.append("    read: ").append(toIndentedString(read)).append("\n");
        sb.append("    start: ").append(toIndentedString(start)).append("\n");
        sb.append("    stop: ").append(toIndentedString(stop)).append("\n");
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

