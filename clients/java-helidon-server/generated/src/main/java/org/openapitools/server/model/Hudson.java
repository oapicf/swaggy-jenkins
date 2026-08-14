package org.openapitools.server.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.server.model.AllView;
import org.openapitools.server.model.FreeStyleProject;
import org.openapitools.server.model.HudsonassignedLabels;
import org.openapitools.server.model.UnlabeledLoadStatistics;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class Hudson   {

    private String propertyClass;
    private List<@Valid HudsonassignedLabels> assignedLabels = new ArrayList<>();
    private String mode;
    private String nodeDescription;
    private String nodeName;
    private Integer numExecutors;
    private String description;
    private List<@Valid FreeStyleProject> jobs = new ArrayList<>();
    private AllView primaryView;
    private Boolean quietingDown;
    private Integer slaveAgentPort;
    private UnlabeledLoadStatistics unlabeledLoad;
    private Boolean useCrumbs;
    private Boolean useSecurity;
    private List<@Valid AllView> views = new ArrayList<>();

    /**
     * Default constructor.
     */
    public Hudson() {
    // JSON-B / Jackson
    }

    /**
     * Create Hudson.
     *
     * @param propertyClass propertyClass
     * @param assignedLabels assignedLabels
     * @param mode mode
     * @param nodeDescription nodeDescription
     * @param nodeName nodeName
     * @param numExecutors numExecutors
     * @param description description
     * @param jobs jobs
     * @param primaryView primaryView
     * @param quietingDown quietingDown
     * @param slaveAgentPort slaveAgentPort
     * @param unlabeledLoad unlabeledLoad
     * @param useCrumbs useCrumbs
     * @param useSecurity useSecurity
     * @param views views
     */
    public Hudson(
        String propertyClass, 
        List<@Valid HudsonassignedLabels> assignedLabels, 
        String mode, 
        String nodeDescription, 
        String nodeName, 
        Integer numExecutors, 
        String description, 
        List<@Valid FreeStyleProject> jobs, 
        AllView primaryView, 
        Boolean quietingDown, 
        Integer slaveAgentPort, 
        UnlabeledLoadStatistics unlabeledLoad, 
        Boolean useCrumbs, 
        Boolean useSecurity, 
        List<@Valid AllView> views
    ) {
        this.propertyClass = propertyClass;
        this.assignedLabels = assignedLabels;
        this.mode = mode;
        this.nodeDescription = nodeDescription;
        this.nodeName = nodeName;
        this.numExecutors = numExecutors;
        this.description = description;
        this.jobs = jobs;
        this.primaryView = primaryView;
        this.quietingDown = quietingDown;
        this.slaveAgentPort = slaveAgentPort;
        this.unlabeledLoad = unlabeledLoad;
        this.useCrumbs = useCrumbs;
        this.useSecurity = useSecurity;
        this.views = views;
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
     * Get assignedLabels
     * @return assignedLabels
     */
    public List<@Valid HudsonassignedLabels> getAssignedLabels() {
        return assignedLabels;
    }

    public void setAssignedLabels(List<@Valid HudsonassignedLabels> assignedLabels) {
        this.assignedLabels = assignedLabels;
    }

    /**
     * Get mode
     * @return mode
     */
    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    /**
     * Get nodeDescription
     * @return nodeDescription
     */
    public String getNodeDescription() {
        return nodeDescription;
    }

    public void setNodeDescription(String nodeDescription) {
        this.nodeDescription = nodeDescription;
    }

    /**
     * Get nodeName
     * @return nodeName
     */
    public String getNodeName() {
        return nodeName;
    }

    public void setNodeName(String nodeName) {
        this.nodeName = nodeName;
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
     * Get description
     * @return description
     */
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * Get jobs
     * @return jobs
     */
    public List<@Valid FreeStyleProject> getJobs() {
        return jobs;
    }

    public void setJobs(List<@Valid FreeStyleProject> jobs) {
        this.jobs = jobs;
    }

    /**
     * Get primaryView
     * @return primaryView
     */
    public AllView getPrimaryView() {
        return primaryView;
    }

    public void setPrimaryView(AllView primaryView) {
        this.primaryView = primaryView;
    }

    /**
     * Get quietingDown
     * @return quietingDown
     */
    public Boolean getQuietingDown() {
        return quietingDown;
    }

    public void setQuietingDown(Boolean quietingDown) {
        this.quietingDown = quietingDown;
    }

    /**
     * Get slaveAgentPort
     * @return slaveAgentPort
     */
    public Integer getSlaveAgentPort() {
        return slaveAgentPort;
    }

    public void setSlaveAgentPort(Integer slaveAgentPort) {
        this.slaveAgentPort = slaveAgentPort;
    }

    /**
     * Get unlabeledLoad
     * @return unlabeledLoad
     */
    public UnlabeledLoadStatistics getUnlabeledLoad() {
        return unlabeledLoad;
    }

    public void setUnlabeledLoad(UnlabeledLoadStatistics unlabeledLoad) {
        this.unlabeledLoad = unlabeledLoad;
    }

    /**
     * Get useCrumbs
     * @return useCrumbs
     */
    public Boolean getUseCrumbs() {
        return useCrumbs;
    }

    public void setUseCrumbs(Boolean useCrumbs) {
        this.useCrumbs = useCrumbs;
    }

    /**
     * Get useSecurity
     * @return useSecurity
     */
    public Boolean getUseSecurity() {
        return useSecurity;
    }

    public void setUseSecurity(Boolean useSecurity) {
        this.useSecurity = useSecurity;
    }

    /**
     * Get views
     * @return views
     */
    public List<@Valid AllView> getViews() {
        return views;
    }

    public void setViews(List<@Valid AllView> views) {
        this.views = views;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class Hudson {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    assignedLabels: ").append(toIndentedString(assignedLabels)).append("\n");
        sb.append("    mode: ").append(toIndentedString(mode)).append("\n");
        sb.append("    nodeDescription: ").append(toIndentedString(nodeDescription)).append("\n");
        sb.append("    nodeName: ").append(toIndentedString(nodeName)).append("\n");
        sb.append("    numExecutors: ").append(toIndentedString(numExecutors)).append("\n");
        sb.append("    description: ").append(toIndentedString(description)).append("\n");
        sb.append("    jobs: ").append(toIndentedString(jobs)).append("\n");
        sb.append("    primaryView: ").append(toIndentedString(primaryView)).append("\n");
        sb.append("    quietingDown: ").append(toIndentedString(quietingDown)).append("\n");
        sb.append("    slaveAgentPort: ").append(toIndentedString(slaveAgentPort)).append("\n");
        sb.append("    unlabeledLoad: ").append(toIndentedString(unlabeledLoad)).append("\n");
        sb.append("    useCrumbs: ").append(toIndentedString(useCrumbs)).append("\n");
        sb.append("    useSecurity: ").append(toIndentedString(useSecurity)).append("\n");
        sb.append("    views: ").append(toIndentedString(views)).append("\n");
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

