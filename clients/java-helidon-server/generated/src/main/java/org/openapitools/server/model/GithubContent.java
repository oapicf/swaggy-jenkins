package org.openapitools.server.model;

import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class GithubContent   {

    private String name;
    private String sha;
    private String propertyClass;
    private String repo;
    private Integer size;
    private String owner;
    private String path;
    private String base64Data;

    /**
     * Default constructor.
     */
    public GithubContent() {
    // JSON-B / Jackson
    }

    /**
     * Create GithubContent.
     *
     * @param name name
     * @param sha sha
     * @param propertyClass propertyClass
     * @param repo repo
     * @param size size
     * @param owner owner
     * @param path path
     * @param base64Data base64Data
     */
    public GithubContent(
        String name, 
        String sha, 
        String propertyClass, 
        String repo, 
        Integer size, 
        String owner, 
        String path, 
        String base64Data
    ) {
        this.name = name;
        this.sha = sha;
        this.propertyClass = propertyClass;
        this.repo = repo;
        this.size = size;
        this.owner = owner;
        this.path = path;
        this.base64Data = base64Data;
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
     * Get sha
     * @return sha
     */
    public String getSha() {
        return sha;
    }

    public void setSha(String sha) {
        this.sha = sha;
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
     * Get repo
     * @return repo
     */
    public String getRepo() {
        return repo;
    }

    public void setRepo(String repo) {
        this.repo = repo;
    }

    /**
     * Get size
     * @return size
     */
    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    /**
     * Get owner
     * @return owner
     */
    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    /**
     * Get path
     * @return path
     */
    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    /**
     * Get base64Data
     * @return base64Data
     */
    public String getBase64Data() {
        return base64Data;
    }

    public void setBase64Data(String base64Data) {
        this.base64Data = base64Data;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class GithubContent {\n");
        
        sb.append("    name: ").append(toIndentedString(name)).append("\n");
        sb.append("    sha: ").append(toIndentedString(sha)).append("\n");
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    repo: ").append(toIndentedString(repo)).append("\n");
        sb.append("    size: ").append(toIndentedString(size)).append("\n");
        sb.append("    owner: ").append(toIndentedString(owner)).append("\n");
        sb.append("    path: ").append(toIndentedString(path)).append("\n");
        sb.append("    base64Data: ").append(toIndentedString(base64Data)).append("\n");
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

