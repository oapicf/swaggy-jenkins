package org.openapitools.server.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.server.model.FreeStyleProject;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class ListView   {

    private String propertyClass;
    private String description;
    private List<@Valid FreeStyleProject> jobs = new ArrayList<>();
    private String name;
    private String url;

    /**
     * Default constructor.
     */
    public ListView() {
    // JSON-B / Jackson
    }

    /**
     * Create ListView.
     *
     * @param propertyClass propertyClass
     * @param description description
     * @param jobs jobs
     * @param name name
     * @param url url
     */
    public ListView(
        String propertyClass, 
        String description, 
        List<@Valid FreeStyleProject> jobs, 
        String name, 
        String url
    ) {
        this.propertyClass = propertyClass;
        this.description = description;
        this.jobs = jobs;
        this.name = name;
        this.url = url;
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
     * Get name
     * @return name
     */
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    /**
     * Get url
     * @return url
     */
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class ListView {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    description: ").append(toIndentedString(description)).append("\n");
        sb.append("    jobs: ").append(toIndentedString(jobs)).append("\n");
        sb.append("    name: ").append(toIndentedString(name)).append("\n");
        sb.append("    url: ").append(toIndentedString(url)).append("\n");
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

