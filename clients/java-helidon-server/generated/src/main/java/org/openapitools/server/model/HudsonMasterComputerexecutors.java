package org.openapitools.server.model;

import org.openapitools.server.model.FreeStyleBuild;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class HudsonMasterComputerexecutors   {

    private FreeStyleBuild currentExecutable;
    private Boolean idle;
    private Boolean likelyStuck;
    private Integer number;
    private Integer progress;
    private String propertyClass;

    /**
     * Default constructor.
     */
    public HudsonMasterComputerexecutors() {
    // JSON-B / Jackson
    }

    /**
     * Create HudsonMasterComputerexecutors.
     *
     * @param currentExecutable currentExecutable
     * @param idle idle
     * @param likelyStuck likelyStuck
     * @param number number
     * @param progress progress
     * @param propertyClass propertyClass
     */
    public HudsonMasterComputerexecutors(
        FreeStyleBuild currentExecutable, 
        Boolean idle, 
        Boolean likelyStuck, 
        Integer number, 
        Integer progress, 
        String propertyClass
    ) {
        this.currentExecutable = currentExecutable;
        this.idle = idle;
        this.likelyStuck = likelyStuck;
        this.number = number;
        this.progress = progress;
        this.propertyClass = propertyClass;
    }



    /**
     * Get currentExecutable
     * @return currentExecutable
     */
    public FreeStyleBuild getCurrentExecutable() {
        return currentExecutable;
    }

    public void setCurrentExecutable(FreeStyleBuild currentExecutable) {
        this.currentExecutable = currentExecutable;
    }

    /**
     * Get idle
     * @return idle
     */
    public Boolean getIdle() {
        return idle;
    }

    public void setIdle(Boolean idle) {
        this.idle = idle;
    }

    /**
     * Get likelyStuck
     * @return likelyStuck
     */
    public Boolean getLikelyStuck() {
        return likelyStuck;
    }

    public void setLikelyStuck(Boolean likelyStuck) {
        this.likelyStuck = likelyStuck;
    }

    /**
     * Get number
     * @return number
     */
    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    /**
     * Get progress
     * @return progress
     */
    public Integer getProgress() {
        return progress;
    }

    public void setProgress(Integer progress) {
        this.progress = progress;
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
        sb.append("class HudsonMasterComputerexecutors {\n");
        
        sb.append("    currentExecutable: ").append(toIndentedString(currentExecutable)).append("\n");
        sb.append("    idle: ").append(toIndentedString(idle)).append("\n");
        sb.append("    likelyStuck: ").append(toIndentedString(likelyStuck)).append("\n");
        sb.append("    number: ").append(toIndentedString(number)).append("\n");
        sb.append("    progress: ").append(toIndentedString(progress)).append("\n");
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

