package org.openapitools.server.model;

import org.openapitools.server.model.GithubRepositorylinks;
import org.openapitools.server.model.GithubRepositorypermissions;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class GithubRepository   {

    private String propertyClass;
    private GithubRepositorylinks links;
    private String defaultBranch;
    private String description;
    private String name;
    private GithubRepositorypermissions permissions;
    private Boolean _private;
    private String fullName;

    /**
     * Default constructor.
     */
    public GithubRepository() {
    // JSON-B / Jackson
    }

    /**
     * Create GithubRepository.
     *
     * @param propertyClass propertyClass
     * @param links links
     * @param defaultBranch defaultBranch
     * @param description description
     * @param name name
     * @param permissions permissions
     * @param _private _private
     * @param fullName fullName
     */
    public GithubRepository(
        String propertyClass, 
        GithubRepositorylinks links, 
        String defaultBranch, 
        String description, 
        String name, 
        GithubRepositorypermissions permissions, 
        Boolean _private, 
        String fullName
    ) {
        this.propertyClass = propertyClass;
        this.links = links;
        this.defaultBranch = defaultBranch;
        this.description = description;
        this.name = name;
        this.permissions = permissions;
        this._private = _private;
        this.fullName = fullName;
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
    public GithubRepositorylinks getLinks() {
        return links;
    }

    public void setLinks(GithubRepositorylinks links) {
        this.links = links;
    }

    /**
     * Get defaultBranch
     * @return defaultBranch
     */
    public String getDefaultBranch() {
        return defaultBranch;
    }

    public void setDefaultBranch(String defaultBranch) {
        this.defaultBranch = defaultBranch;
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
     * Get permissions
     * @return permissions
     */
    public GithubRepositorypermissions getPermissions() {
        return permissions;
    }

    public void setPermissions(GithubRepositorypermissions permissions) {
        this.permissions = permissions;
    }

    /**
     * Get _private
     * @return _private
     */
    public Boolean getPrivate() {
        return _private;
    }

    public void setPrivate(Boolean _private) {
        this._private = _private;
    }

    /**
     * Get fullName
     * @return fullName
     */
    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class GithubRepository {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    links: ").append(toIndentedString(links)).append("\n");
        sb.append("    defaultBranch: ").append(toIndentedString(defaultBranch)).append("\n");
        sb.append("    description: ").append(toIndentedString(description)).append("\n");
        sb.append("    name: ").append(toIndentedString(name)).append("\n");
        sb.append("    permissions: ").append(toIndentedString(permissions)).append("\n");
        sb.append("    _private: ").append(toIndentedString(_private)).append("\n");
        sb.append("    fullName: ").append(toIndentedString(fullName)).append("\n");
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

