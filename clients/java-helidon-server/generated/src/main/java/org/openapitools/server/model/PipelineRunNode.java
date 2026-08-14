package org.openapitools.server.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.server.model.PipelineRunNodeedges;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class PipelineRunNode   {

    private String propertyClass;
    private String displayName;
    private Integer durationInMillis;
    private List<@Valid PipelineRunNodeedges> edges = new ArrayList<>();
    private String id;
    private String result;
    private String startTime;
    private String state;

    /**
     * Default constructor.
     */
    public PipelineRunNode() {
    // JSON-B / Jackson
    }

    /**
     * Create PipelineRunNode.
     *
     * @param propertyClass propertyClass
     * @param displayName displayName
     * @param durationInMillis durationInMillis
     * @param edges edges
     * @param id id
     * @param result result
     * @param startTime startTime
     * @param state state
     */
    public PipelineRunNode(
        String propertyClass, 
        String displayName, 
        Integer durationInMillis, 
        List<@Valid PipelineRunNodeedges> edges, 
        String id, 
        String result, 
        String startTime, 
        String state
    ) {
        this.propertyClass = propertyClass;
        this.displayName = displayName;
        this.durationInMillis = durationInMillis;
        this.edges = edges;
        this.id = id;
        this.result = result;
        this.startTime = startTime;
        this.state = state;
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
     * Get edges
     * @return edges
     */
    public List<@Valid PipelineRunNodeedges> getEdges() {
        return edges;
    }

    public void setEdges(List<@Valid PipelineRunNodeedges> edges) {
        this.edges = edges;
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
     * Get state
     * @return state
     */
    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class PipelineRunNode {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
        sb.append("    durationInMillis: ").append(toIndentedString(durationInMillis)).append("\n");
        sb.append("    edges: ").append(toIndentedString(edges)).append("\n");
        sb.append("    id: ").append(toIndentedString(id)).append("\n");
        sb.append("    result: ").append(toIndentedString(result)).append("\n");
        sb.append("    startTime: ").append(toIndentedString(startTime)).append("\n");
        sb.append("    state: ").append(toIndentedString(state)).append("\n");
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

