package org.openapitools.server.model;

import org.openapitools.server.model.Link;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class PipelineImpllinks   {

    private Link self;
    private Link actions;
    private Link runs;
    private Link queue;
    private String propertyClass;

    /**
     * Default constructor.
     */
    public PipelineImpllinks() {
    // JSON-B / Jackson
    }

    /**
     * Create PipelineImpllinks.
     *
     * @param self self
     * @param actions actions
     * @param runs runs
     * @param queue queue
     * @param propertyClass propertyClass
     */
    public PipelineImpllinks(
        Link self, 
        Link actions, 
        Link runs, 
        Link queue, 
        String propertyClass
    ) {
        this.self = self;
        this.actions = actions;
        this.runs = runs;
        this.queue = queue;
        this.propertyClass = propertyClass;
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
     * Get runs
     * @return runs
     */
    public Link getRuns() {
        return runs;
    }

    public void setRuns(Link runs) {
        this.runs = runs;
    }

    /**
     * Get queue
     * @return queue
     */
    public Link getQueue() {
        return queue;
    }

    public void setQueue(Link queue) {
        this.queue = queue;
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
        sb.append("class PipelineImpllinks {\n");
        
        sb.append("    self: ").append(toIndentedString(self)).append("\n");
        sb.append("    actions: ").append(toIndentedString(actions)).append("\n");
        sb.append("    runs: ").append(toIndentedString(runs)).append("\n");
        sb.append("    queue: ").append(toIndentedString(queue)).append("\n");
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

