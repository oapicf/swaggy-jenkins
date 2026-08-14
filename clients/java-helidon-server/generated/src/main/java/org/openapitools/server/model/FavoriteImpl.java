package org.openapitools.server.model;

import org.openapitools.server.model.FavoriteImpllinks;
import org.openapitools.server.model.PipelineImpl;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class FavoriteImpl   {

    private String propertyClass;
    private FavoriteImpllinks links;
    private PipelineImpl item;

    /**
     * Default constructor.
     */
    public FavoriteImpl() {
    // JSON-B / Jackson
    }

    /**
     * Create FavoriteImpl.
     *
     * @param propertyClass propertyClass
     * @param links links
     * @param item item
     */
    public FavoriteImpl(
        String propertyClass, 
        FavoriteImpllinks links, 
        PipelineImpl item
    ) {
        this.propertyClass = propertyClass;
        this.links = links;
        this.item = item;
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
    public FavoriteImpllinks getLinks() {
        return links;
    }

    public void setLinks(FavoriteImpllinks links) {
        this.links = links;
    }

    /**
     * Get item
     * @return item
     */
    public PipelineImpl getItem() {
        return item;
    }

    public void setItem(PipelineImpl item) {
        this.item = item;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class FavoriteImpl {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    links: ").append(toIndentedString(links)).append("\n");
        sb.append("    item: ").append(toIndentedString(item)).append("\n");
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

