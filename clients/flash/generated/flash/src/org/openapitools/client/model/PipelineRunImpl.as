package org.openapitools.client.model {

import org.openapitools.client.model.PipelineRunImpllinks;

    [XmlRootNode(name="PipelineRunImpl")]
    public class PipelineRunImpl {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="_links")]
        public var links: PipelineRunImpllinks = NaN;
                [XmlElement(name="durationInMillis")]
        public var durationInMillis: Number = 0;
                [XmlElement(name="enQueueTime")]
        public var enQueueTime: String = null;
                [XmlElement(name="endTime")]
        public var endTime: String = null;
                [XmlElement(name="estimatedDurationInMillis")]
        public var estimatedDurationInMillis: Number = 0;
                [XmlElement(name="id")]
        public var id: String = null;
                [XmlElement(name="organization")]
        public var organization: String = null;
                [XmlElement(name="pipeline")]
        public var pipeline: String = null;
                [XmlElement(name="result")]
        public var result: String = null;
                [XmlElement(name="runSummary")]
        public var runSummary: String = null;
                [XmlElement(name="startTime")]
        public var startTime: String = null;
                [XmlElement(name="state")]
        public var state: String = null;
                [XmlElement(name="type")]
        public var type: String = null;
                [XmlElement(name="commitId")]
        public var commitId: String = null;

    public function toString(): String {
        var str: String = "PipelineRunImpl: ";
        str += " (class: " + class + ")";
        str += " (links: " + links + ")";
        str += " (durationInMillis: " + durationInMillis + ")";
        str += " (enQueueTime: " + enQueueTime + ")";
        str += " (endTime: " + endTime + ")";
        str += " (estimatedDurationInMillis: " + estimatedDurationInMillis + ")";
        str += " (id: " + id + ")";
        str += " (organization: " + organization + ")";
        str += " (pipeline: " + pipeline + ")";
        str += " (result: " + result + ")";
        str += " (runSummary: " + runSummary + ")";
        str += " (startTime: " + startTime + ")";
        str += " (state: " + state + ")";
        str += " (type: " + type + ")";
        str += " (commitId: " + commitId + ")";
        return str;
    }

}

}
