package org.openapitools.client.model {

import org.openapitools.client.model.ExtensionClassImpl;

    [XmlRootNode(name="ExtensionClassContainerImpl1map")]
    public class ExtensionClassContainerImpl1map {
                [XmlElement(name="io.jenkins.blueocean.service.embedded.rest.PipelineImpl")]
        public var ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: ExtensionClassImpl = NaN;
                [XmlElement(name="io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl")]
        public var ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: ExtensionClassImpl = NaN;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "ExtensionClassContainerImpl1map: ";
        str += " (ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: " + ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl + ")";
        str += " (ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: " + ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
