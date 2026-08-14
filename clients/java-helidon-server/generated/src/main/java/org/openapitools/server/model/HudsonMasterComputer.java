package org.openapitools.server.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.server.model.HudsonMasterComputerexecutors;
import org.openapitools.server.model.HudsonMasterComputermonitorData;
import org.openapitools.server.model.Label1;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class HudsonMasterComputer   {

    private String propertyClass;
    private String displayName;
    private List<@Valid HudsonMasterComputerexecutors> executors = new ArrayList<>();
    private String icon;
    private String iconClassName;
    private Boolean idle;
    private Boolean jnlpAgent;
    private Boolean launchSupported;
    private Label1 loadStatistics;
    private Boolean manualLaunchAllowed;
    private HudsonMasterComputermonitorData monitorData;
    private Integer numExecutors;
    private Boolean offline;
    private String offlineCause;
    private String offlineCauseReason;
    private Boolean temporarilyOffline;

    /**
     * Default constructor.
     */
    public HudsonMasterComputer() {
    // JSON-B / Jackson
    }

    /**
     * Create HudsonMasterComputer.
     *
     * @param propertyClass propertyClass
     * @param displayName displayName
     * @param executors executors
     * @param icon icon
     * @param iconClassName iconClassName
     * @param idle idle
     * @param jnlpAgent jnlpAgent
     * @param launchSupported launchSupported
     * @param loadStatistics loadStatistics
     * @param manualLaunchAllowed manualLaunchAllowed
     * @param monitorData monitorData
     * @param numExecutors numExecutors
     * @param offline offline
     * @param offlineCause offlineCause
     * @param offlineCauseReason offlineCauseReason
     * @param temporarilyOffline temporarilyOffline
     */
    public HudsonMasterComputer(
        String propertyClass, 
        String displayName, 
        List<@Valid HudsonMasterComputerexecutors> executors, 
        String icon, 
        String iconClassName, 
        Boolean idle, 
        Boolean jnlpAgent, 
        Boolean launchSupported, 
        Label1 loadStatistics, 
        Boolean manualLaunchAllowed, 
        HudsonMasterComputermonitorData monitorData, 
        Integer numExecutors, 
        Boolean offline, 
        String offlineCause, 
        String offlineCauseReason, 
        Boolean temporarilyOffline
    ) {
        this.propertyClass = propertyClass;
        this.displayName = displayName;
        this.executors = executors;
        this.icon = icon;
        this.iconClassName = iconClassName;
        this.idle = idle;
        this.jnlpAgent = jnlpAgent;
        this.launchSupported = launchSupported;
        this.loadStatistics = loadStatistics;
        this.manualLaunchAllowed = manualLaunchAllowed;
        this.monitorData = monitorData;
        this.numExecutors = numExecutors;
        this.offline = offline;
        this.offlineCause = offlineCause;
        this.offlineCauseReason = offlineCauseReason;
        this.temporarilyOffline = temporarilyOffline;
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
     * Get executors
     * @return executors
     */
    public List<@Valid HudsonMasterComputerexecutors> getExecutors() {
        return executors;
    }

    public void setExecutors(List<@Valid HudsonMasterComputerexecutors> executors) {
        this.executors = executors;
    }

    /**
     * Get icon
     * @return icon
     */
    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    /**
     * Get iconClassName
     * @return iconClassName
     */
    public String getIconClassName() {
        return iconClassName;
    }

    public void setIconClassName(String iconClassName) {
        this.iconClassName = iconClassName;
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
     * Get jnlpAgent
     * @return jnlpAgent
     */
    public Boolean getJnlpAgent() {
        return jnlpAgent;
    }

    public void setJnlpAgent(Boolean jnlpAgent) {
        this.jnlpAgent = jnlpAgent;
    }

    /**
     * Get launchSupported
     * @return launchSupported
     */
    public Boolean getLaunchSupported() {
        return launchSupported;
    }

    public void setLaunchSupported(Boolean launchSupported) {
        this.launchSupported = launchSupported;
    }

    /**
     * Get loadStatistics
     * @return loadStatistics
     */
    public Label1 getLoadStatistics() {
        return loadStatistics;
    }

    public void setLoadStatistics(Label1 loadStatistics) {
        this.loadStatistics = loadStatistics;
    }

    /**
     * Get manualLaunchAllowed
     * @return manualLaunchAllowed
     */
    public Boolean getManualLaunchAllowed() {
        return manualLaunchAllowed;
    }

    public void setManualLaunchAllowed(Boolean manualLaunchAllowed) {
        this.manualLaunchAllowed = manualLaunchAllowed;
    }

    /**
     * Get monitorData
     * @return monitorData
     */
    public HudsonMasterComputermonitorData getMonitorData() {
        return monitorData;
    }

    public void setMonitorData(HudsonMasterComputermonitorData monitorData) {
        this.monitorData = monitorData;
    }

    /**
     * Get numExecutors
     * @return numExecutors
     */
    public Integer getNumExecutors() {
        return numExecutors;
    }

    public void setNumExecutors(Integer numExecutors) {
        this.numExecutors = numExecutors;
    }

    /**
     * Get offline
     * @return offline
     */
    public Boolean getOffline() {
        return offline;
    }

    public void setOffline(Boolean offline) {
        this.offline = offline;
    }

    /**
     * Get offlineCause
     * @return offlineCause
     */
    public String getOfflineCause() {
        return offlineCause;
    }

    public void setOfflineCause(String offlineCause) {
        this.offlineCause = offlineCause;
    }

    /**
     * Get offlineCauseReason
     * @return offlineCauseReason
     */
    public String getOfflineCauseReason() {
        return offlineCauseReason;
    }

    public void setOfflineCauseReason(String offlineCauseReason) {
        this.offlineCauseReason = offlineCauseReason;
    }

    /**
     * Get temporarilyOffline
     * @return temporarilyOffline
     */
    public Boolean getTemporarilyOffline() {
        return temporarilyOffline;
    }

    public void setTemporarilyOffline(Boolean temporarilyOffline) {
        this.temporarilyOffline = temporarilyOffline;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class HudsonMasterComputer {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
        sb.append("    executors: ").append(toIndentedString(executors)).append("\n");
        sb.append("    icon: ").append(toIndentedString(icon)).append("\n");
        sb.append("    iconClassName: ").append(toIndentedString(iconClassName)).append("\n");
        sb.append("    idle: ").append(toIndentedString(idle)).append("\n");
        sb.append("    jnlpAgent: ").append(toIndentedString(jnlpAgent)).append("\n");
        sb.append("    launchSupported: ").append(toIndentedString(launchSupported)).append("\n");
        sb.append("    loadStatistics: ").append(toIndentedString(loadStatistics)).append("\n");
        sb.append("    manualLaunchAllowed: ").append(toIndentedString(manualLaunchAllowed)).append("\n");
        sb.append("    monitorData: ").append(toIndentedString(monitorData)).append("\n");
        sb.append("    numExecutors: ").append(toIndentedString(numExecutors)).append("\n");
        sb.append("    offline: ").append(toIndentedString(offline)).append("\n");
        sb.append("    offlineCause: ").append(toIndentedString(offlineCause)).append("\n");
        sb.append("    offlineCauseReason: ").append(toIndentedString(offlineCauseReason)).append("\n");
        sb.append("    temporarilyOffline: ").append(toIndentedString(temporarilyOffline)).append("\n");
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

