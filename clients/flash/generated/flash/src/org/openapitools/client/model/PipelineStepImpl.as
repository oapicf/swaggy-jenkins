package org.openapitools.client.model {

import org.openapitools.client.model.InputStepImpl;
import org.openapitools.client.model.PipelineStepImpllinks;

    [XmlRootNode(name="PipelineStepImpl")]
    public class PipelineStepImpl {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="_links")]
        public var links: PipelineStepImpllinks = NaN;
                [XmlElement(name="displayName")]
        public var displayName: String = null;
                [XmlElement(name="durationInMillis")]
        public var durationInMillis: Number = 0;
                [XmlElement(name="id")]
        public var id: String = null;
                [XmlElement(name="input")]
        public var input: InputStepImpl = NaN;
                [XmlElement(name="result")]
        public var result: String = null;
                [XmlElement(name="startTime")]
        public var startTime: String = null;
                [XmlElement(name="state")]
        public var state: String = null;

    public function toString(): String {
        var str: String = "PipelineStepImpl: ";
        str += " (class: " + class + ")";
        str += " (links: " + links + ")";
        str += " (displayName: " + displayName + ")";
        str += " (durationInMillis: " + durationInMillis + ")";
        str += " (id: " + id + ")";
        str += " (input: " + input + ")";
        str += " (result: " + result + ")";
        str += " (startTime: " + startTime + ")";
        str += " (state: " + state + ")";
        return str;
    }

}

}
