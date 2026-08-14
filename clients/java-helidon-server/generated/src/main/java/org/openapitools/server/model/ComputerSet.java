package org.openapitools.server.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.server.model.HudsonMasterComputer;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class ComputerSet   {

    private String propertyClass;
    private Integer busyExecutors;
    private List<@Valid HudsonMasterComputer> computer = new ArrayList<>();
    private String displayName;
    private Integer totalExecutors;

    /**
     * Default constructor.
     */
    public ComputerSet() {
    // JSON-B / Jackson
    }

    /**
     * Create ComputerSet.
     *
     * @param propertyClass propertyClass
     * @param busyExecutors busyExecutors
     * @param computer computer
     * @param displayName displayName
     * @param totalExecutors totalExecutors
     */
    public ComputerSet(
        String propertyClass, 
        Integer busyExecutors, 
        List<@Valid HudsonMasterComputer> computer, 
        String displayName, 
        Integer totalExecutors
    ) {
        this.propertyClass = propertyClass;
        this.busyExecutors = busyExecutors;
        this.computer = computer;
        this.displayName = displayName;
        this.totalExecutors = totalExecutors;
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
     * Get busyExecutors
     * @return busyExecutors
     */
    public Integer getBusyExecutors() {
        return busyExecutors;
    }

    public void setBusyExecutors(Integer busyExecutors) {
        this.busyExecutors = busyExecutors;
    }

    /**
     * Get computer
     * @return computer
     */
    public List<@Valid HudsonMasterComputer> getComputer() {
        return computer;
    }

    public void setComputer(List<@Valid HudsonMasterComputer> computer) {
        this.computer = computer;
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
     * Get totalExecutors
     * @return totalExecutors
     */
    public Integer getTotalExecutors() {
        return totalExecutors;
    }

    public void setTotalExecutors(Integer totalExecutors) {
        this.totalExecutors = totalExecutors;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class ComputerSet {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    busyExecutors: ").append(toIndentedString(busyExecutors)).append("\n");
        sb.append("    computer: ").append(toIndentedString(computer)).append("\n");
        sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
        sb.append("    totalExecutors: ").append(toIndentedString(totalExecutors)).append("\n");
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

