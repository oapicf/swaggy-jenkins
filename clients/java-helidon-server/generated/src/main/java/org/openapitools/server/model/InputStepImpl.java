package org.openapitools.server.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.server.model.InputStepImpllinks;
import org.openapitools.server.model.StringParameterDefinition;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class InputStepImpl   {

    private String propertyClass;
    private InputStepImpllinks links;
    private String id;
    private String message;
    private String ok;
    private List<@Valid StringParameterDefinition> parameters = new ArrayList<>();
    private String submitter;

    /**
     * Default constructor.
     */
    public InputStepImpl() {
    // JSON-B / Jackson
    }

    /**
     * Create InputStepImpl.
     *
     * @param propertyClass propertyClass
     * @param links links
     * @param id id
     * @param message message
     * @param ok ok
     * @param parameters parameters
     * @param submitter submitter
     */
    public InputStepImpl(
        String propertyClass, 
        InputStepImpllinks links, 
        String id, 
        String message, 
        String ok, 
        List<@Valid StringParameterDefinition> parameters, 
        String submitter
    ) {
        this.propertyClass = propertyClass;
        this.links = links;
        this.id = id;
        this.message = message;
        this.ok = ok;
        this.parameters = parameters;
        this.submitter = submitter;
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
     * Get links
     * @return links
     */
    public InputStepImpllinks getLinks() {
        return links;
    }

    public void setLinks(InputStepImpllinks links) {
        this.links = links;
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
     * Get message
     * @return message
     */
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    /**
     * Get ok
     * @return ok
     */
    public String getOk() {
        return ok;
    }

    public void setOk(String ok) {
        this.ok = ok;
    }

    /**
     * Get parameters
     * @return parameters
     */
    public List<@Valid StringParameterDefinition> getParameters() {
        return parameters;
    }

    public void setParameters(List<@Valid StringParameterDefinition> parameters) {
        this.parameters = parameters;
    }

    /**
     * Get submitter
     * @return submitter
     */
    public String getSubmitter() {
        return submitter;
    }

    public void setSubmitter(String submitter) {
        this.submitter = submitter;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class InputStepImpl {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    links: ").append(toIndentedString(links)).append("\n");
        sb.append("    id: ").append(toIndentedString(id)).append("\n");
        sb.append("    message: ").append(toIndentedString(message)).append("\n");
        sb.append("    ok: ").append(toIndentedString(ok)).append("\n");
        sb.append("    parameters: ").append(toIndentedString(parameters)).append("\n");
        sb.append("    submitter: ").append(toIndentedString(submitter)).append("\n");
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

