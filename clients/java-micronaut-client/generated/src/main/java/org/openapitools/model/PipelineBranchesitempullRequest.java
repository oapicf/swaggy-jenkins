/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.model;

import java.util.Objects;
import java.util.Arrays;
import org.openapitools.model.PipelineBranchesitempullRequestlinks;
import com.fasterxml.jackson.annotation.*;

import javax.validation.constraints.*;
import javax.validation.Valid;
import io.micronaut.core.annotation.*;
import javax.annotation.Generated;

/**
 * PipelineBranchesitempullRequest
 */
@JsonPropertyOrder({
  PipelineBranchesitempullRequest.JSON_PROPERTY_LINKS,
  PipelineBranchesitempullRequest.JSON_PROPERTY_AUTHOR,
  PipelineBranchesitempullRequest.JSON_PROPERTY_ID,
  PipelineBranchesitempullRequest.JSON_PROPERTY_TITLE,
  PipelineBranchesitempullRequest.JSON_PROPERTY_URL,
  PipelineBranchesitempullRequest.JSON_PROPERTY_PROPERTY_CLASS
})
@JsonTypeName("PipelineBranchesitempullRequest")
@Generated(value="org.openapitools.codegen.languages.JavaMicronautClientCodegen", date="2024-03-15T14:11:59.582308919Z[Etc/UTC]", comments = "Generator version: 7.4.0")
@Introspected
public class PipelineBranchesitempullRequest {
    public static final String JSON_PROPERTY_LINKS = "_links";
    private PipelineBranchesitempullRequestlinks links;

    public static final String JSON_PROPERTY_AUTHOR = "author";
    private String author;

    public static final String JSON_PROPERTY_ID = "id";
    private String id;

    public static final String JSON_PROPERTY_TITLE = "title";
    private String title;

    public static final String JSON_PROPERTY_URL = "url";
    private String url;

    public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
    private String propertyClass;

    public PipelineBranchesitempullRequest() {
    }

    public PipelineBranchesitempullRequest links(PipelineBranchesitempullRequestlinks links) {
        this.links = links;
        return this;
    }

    /**
     * Get links
     * @return links
     **/
    @Valid
    @Nullable
    @JsonProperty(JSON_PROPERTY_LINKS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public PipelineBranchesitempullRequestlinks getLinks() {
        return links;
    }

    @JsonProperty(JSON_PROPERTY_LINKS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setLinks(PipelineBranchesitempullRequestlinks links) {
        this.links = links;
    }

    public PipelineBranchesitempullRequest author(String author) {
        this.author = author;
        return this;
    }

    /**
     * Get author
     * @return author
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_AUTHOR)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getAuthor() {
        return author;
    }

    @JsonProperty(JSON_PROPERTY_AUTHOR)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setAuthor(String author) {
        this.author = author;
    }

    public PipelineBranchesitempullRequest id(String id) {
        this.id = id;
        return this;
    }

    /**
     * Get id
     * @return id
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_ID)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getId() {
        return id;
    }

    @JsonProperty(JSON_PROPERTY_ID)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setId(String id) {
        this.id = id;
    }

    public PipelineBranchesitempullRequest title(String title) {
        this.title = title;
        return this;
    }

    /**
     * Get title
     * @return title
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_TITLE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getTitle() {
        return title;
    }

    @JsonProperty(JSON_PROPERTY_TITLE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setTitle(String title) {
        this.title = title;
    }

    public PipelineBranchesitempullRequest url(String url) {
        this.url = url;
        return this;
    }

    /**
     * Get url
     * @return url
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_URL)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getUrl() {
        return url;
    }

    @JsonProperty(JSON_PROPERTY_URL)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setUrl(String url) {
        this.url = url;
    }

    public PipelineBranchesitempullRequest propertyClass(String propertyClass) {
        this.propertyClass = propertyClass;
        return this;
    }

    /**
     * Get propertyClass
     * @return propertyClass
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_PROPERTY_CLASS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getPropertyClass() {
        return propertyClass;
    }

    @JsonProperty(JSON_PROPERTY_PROPERTY_CLASS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setPropertyClass(String propertyClass) {
        this.propertyClass = propertyClass;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        PipelineBranchesitempullRequest pipelineBranchesitempullRequest = (PipelineBranchesitempullRequest) o;
        return Objects.equals(this.links, pipelineBranchesitempullRequest.links) &&
            Objects.equals(this.author, pipelineBranchesitempullRequest.author) &&
            Objects.equals(this.id, pipelineBranchesitempullRequest.id) &&
            Objects.equals(this.title, pipelineBranchesitempullRequest.title) &&
            Objects.equals(this.url, pipelineBranchesitempullRequest.url) &&
            Objects.equals(this.propertyClass, pipelineBranchesitempullRequest.propertyClass);
    }

    @Override
    public int hashCode() {
        return Objects.hash(links, author, id, title, url, propertyClass);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class PipelineBranchesitempullRequest {\n");
        sb.append("    links: ").append(toIndentedString(links)).append("\n");
        sb.append("    author: ").append(toIndentedString(author)).append("\n");
        sb.append("    id: ").append(toIndentedString(id)).append("\n");
        sb.append("    title: ").append(toIndentedString(title)).append("\n");
        sb.append("    url: ").append(toIndentedString(url)).append("\n");
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("}");
        return sb.toString();
    }

    /**
     * Convert the given object to string with each line indented by 4 spaces
     * (except the first line).
     */
    private String toIndentedString(Object o) {
        if (o == null) {
            return "null";
        }
        return o.toString().replace("\n", "\n    ");
    }

}

