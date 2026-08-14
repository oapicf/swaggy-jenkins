package org.openapitools.server.model;

import org.openapitools.server.model.GithubScmlinks;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class GithubScm   {

    private String propertyClass;
    private GithubScmlinks links;
    private String credentialId;
    private String id;
    private String uri;

    /**
     * Default constructor.
     */
    public GithubScm() {
    // JSON-B / Jackson
    }

    /**
     * Create GithubScm.
     *
     * @param propertyClass propertyClass
     * @param links links
     * @param credentialId credentialId
     * @param id id
     * @param uri uri
     */
    public GithubScm(
        String propertyClass, 
        GithubScmlinks links, 
        String credentialId, 
        String id, 
        String uri
    ) {
        this.propertyClass = propertyClass;
        this.links = links;
        this.credentialId = credentialId;
        this.id = id;
        this.uri = uri;
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
    public GithubScmlinks getLinks() {
        return links;
    }

    public void setLinks(GithubScmlinks links) {
        this.links = links;
    }

    /**
     * Get credentialId
     * @return credentialId
     */
    public String getCredentialId() {
        return credentialId;
    }

    public void setCredentialId(String credentialId) {
        this.credentialId = credentialId;
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
     * Get uri
     * @return uri
     */
    public String getUri() {
        return uri;
    }

    public void setUri(String uri) {
        this.uri = uri;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class GithubScm {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    links: ").append(toIndentedString(links)).append("\n");
        sb.append("    credentialId: ").append(toIndentedString(credentialId)).append("\n");
        sb.append("    id: ").append(toIndentedString(id)).append("\n");
        sb.append("    uri: ").append(toIndentedString(uri)).append("\n");
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

