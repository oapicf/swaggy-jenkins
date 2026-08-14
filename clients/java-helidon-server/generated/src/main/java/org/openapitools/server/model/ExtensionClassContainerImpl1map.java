package org.openapitools.server.model;

import org.openapitools.server.model.ExtensionClassImpl;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class ExtensionClassContainerImpl1map   {

    private ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
    private ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
    private String propertyClass;

    /**
     * Default constructor.
     */
    public ExtensionClassContainerImpl1map() {
    // JSON-B / Jackson
    }

    /**
     * Create ExtensionClassContainerImpl1map.
     *
     * @param ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl
     * @param ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl
     * @param propertyClass propertyClass
     */
    public ExtensionClassContainerImpl1map(
        ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl, 
        ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl, 
        String propertyClass
    ) {
        this.ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
        this.ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
        this.propertyClass = propertyClass;
    }



    /**
     * Get ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl
     * @return ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl
     */
    public ExtensionClassImpl getIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl() {
        return ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
    }

    public void setIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl(ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl) {
        this.ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
    }

    /**
     * Get ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl
     * @return ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl
     */
    public ExtensionClassImpl getIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl() {
        return ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
    }

    public void setIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl(ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl) {
        this.ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
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
        sb.append("class ExtensionClassContainerImpl1map {\n");
        
        sb.append("    ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: ").append(toIndentedString(ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl)).append("\n");
        sb.append("    ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: ").append(toIndentedString(ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl)).append("\n");
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

