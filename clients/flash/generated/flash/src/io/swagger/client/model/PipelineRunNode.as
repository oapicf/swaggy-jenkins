package io.swagger.client.model {

import io.swagger.client.model.PipelineRunNodeedges;

    [XmlRootNode(name="PipelineRunNode")]
    public class PipelineRunNode {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="displayName")]
        public var displayName: String = null;
                [XmlElement(name="durationInMillis")]
        public var durationInMillis: Number = NaN;
                // This declaration below of _edges_obj_class is to force flash compiler to include this class
        private var _edges_obj_class: Array = null;
        [XmlElementWrapper(name="edges")]
        [XmlElements(name="edges", type="Array")]
                public var edges: Array = new Array();
                [XmlElement(name="id")]
        public var id: String = null;
                [XmlElement(name="result")]
        public var result: String = null;
                [XmlElement(name="startTime")]
        public var startTime: String = null;
                [XmlElement(name="state")]
        public var state: String = null;

    public function toString(): String {
        var str: String = "PipelineRunNode: ";
        str += " (class: " + class + ")";
        str += " (displayName: " + displayName + ")";
        str += " (durationInMillis: " + durationInMillis + ")";
        str += " (edges: " + edges + ")";
        str += " (id: " + id + ")";
        str += " (result: " + result + ")";
        str += " (startTime: " + startTime + ")";
        str += " (state: " + state + ")";
        return str;
    }

}

}
