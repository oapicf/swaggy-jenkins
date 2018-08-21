package org.openapitools.client.model {


    [XmlRootNode(name="PipelineRunNodeedges")]
    public class PipelineRunNodeedges {
                [XmlElement(name="id")]
        public var id: String = null;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "PipelineRunNodeedges: ";
        str += " (id: " + id + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
