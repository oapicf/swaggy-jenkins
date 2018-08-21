package org.openapitools.client.model {

import org.openapitools.client.model.PipelinelatestRun;

    [XmlRootNode(name="Pipeline")]
    public class Pipeline {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="organization")]
        public var organization: String = null;
                [XmlElement(name="name")]
        public var name: String = null;
                [XmlElement(name="displayName")]
        public var displayName: String = null;
                [XmlElement(name="fullName")]
        public var fullName: String = null;
                [XmlElement(name="weatherScore")]
        public var weatherScore: Number = 0;
                [XmlElement(name="estimatedDurationInMillis")]
        public var estimatedDurationInMillis: Number = 0;
                [XmlElement(name="latestRun")]
        public var latestRun: PipelinelatestRun = NaN;

    public function toString(): String {
        var str: String = "Pipeline: ";
        str += " (class: " + class + ")";
        str += " (organization: " + organization + ")";
        str += " (name: " + name + ")";
        str += " (displayName: " + displayName + ")";
        str += " (fullName: " + fullName + ")";
        str += " (weatherScore: " + weatherScore + ")";
        str += " (estimatedDurationInMillis: " + estimatedDurationInMillis + ")";
        str += " (latestRun: " + latestRun + ")";
        return str;
    }

}

}
