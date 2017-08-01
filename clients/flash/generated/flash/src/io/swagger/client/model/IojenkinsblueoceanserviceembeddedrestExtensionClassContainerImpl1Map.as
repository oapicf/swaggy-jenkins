package io.swagger.client.model {

import io.swagger.client.model.IojenkinsblueoceanserviceembeddedrestExtensionClassImpl;

    [XmlRootNode(name="IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map")]
    public class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map {
                [XmlElement(name="io.jenkins.blueocean.service.embedded.rest.PipelineImpl")]
        public var ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: IojenkinsblueoceanserviceembeddedrestExtensionClassImpl = NaN;
                [XmlElement(name="io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl")]
        public var ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: IojenkinsblueoceanserviceembeddedrestExtensionClassImpl = NaN;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map: ";
        str += " (ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: " + ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl + ")";
        str += " (ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: " + ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
