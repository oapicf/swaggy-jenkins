package org.openapitools.server.model;

import org.openapitools.server.model.Link;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class PipelineRunImpllinks   {

    private Link nodes;
    private Link log;
    private Link self;
    private Link actions;
    private Link steps;
    private String propertyClass;

    /**
     * Default constructor.
     */
    public PipelineRunImpllinks() {
    // JSON-B / Jackson
    }

    /**
     * Create PipelineRunImpllinks.
     *
     * @param nodes nodes
     * @param log log
     * @param self self
     * @param actions actions
     * @param steps steps
     * @param propertyClass propertyClass
     */
    public PipelineRunImpllinks(
        Link nodes, 
        Link log, 
        Link self, 
        Link actions, 
        Link steps, 
        String propertyClass
    ) {
        this.nodes = nodes;
        this.log = log;
        this.self = self;
        this.actions = actions;
        this.steps = steps;
        this.propertyClass = propertyClass;
    }



    /**
     * Get nodes
     * @return nodes
     */
    public Link getNodes() {
        return nodes;
    }

    public void setNodes(Link nodes) {
        this.nodes = nodes;
    }

    /**
     * Get log
     * @return log
     */
    public Link getLog() {
        return log;
    }

    public void setLog(Link log) {
        this.log = log;
    }

    /**
     * Get self
     * @return self
     */
    public Link getSelf() {
        return self;
    }

    public void setSelf(Link self) {
        this.self = self;
    }

    /**
     * Get actions
     * @return actions
     */
    public Link getActions() {
        return actions;
    }

    public void setActions(Link actions) {
        this.actions = actions;
    }

    /**
     * Get steps
     * @return steps
     */
    public Link getSteps() {
        return steps;
    }

    public void setSteps(Link steps) {
        this.steps = steps;
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
        sb.append("class PipelineRunImpllinks {\n");
        
        sb.append("    nodes: ").append(toIndentedString(nodes)).append("\n");
        sb.append("    log: ").append(toIndentedString(log)).append("\n");
        sb.append("    self: ").append(toIndentedString(self)).append("\n");
        sb.append("    actions: ").append(toIndentedString(actions)).append("\n");
        sb.append("    steps: ").append(toIndentedString(steps)).append("\n");
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

