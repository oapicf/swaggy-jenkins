package org.openapitools.client.model {


    [XmlRootNode(name="ResponseTimeMonitorData")]
    public class ResponseTimeMonitorData {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="timestamp")]
        public var timestamp: Number = 0;
                [XmlElement(name="average")]
        public var average: Number = 0;

    public function toString(): String {
        var str: String = "ResponseTimeMonitorData: ";
        str += " (class: " + class + ")";
        str += " (timestamp: " + timestamp + ")";
        str += " (average: " + average + ")";
        return str;
    }

}

}
