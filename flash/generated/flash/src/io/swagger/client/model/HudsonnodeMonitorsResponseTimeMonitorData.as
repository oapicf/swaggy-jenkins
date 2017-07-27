package io.swagger.client.model {


    [XmlRootNode(name="HudsonnodeMonitorsResponseTimeMonitorData")]
    public class HudsonnodeMonitorsResponseTimeMonitorData {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="timestamp")]
        public var timestamp: Number = NaN;
                [XmlElement(name="average")]
        public var average: Number = NaN;

    public function toString(): String {
        var str: String = "HudsonnodeMonitorsResponseTimeMonitorData: ";
        str += " (class: " + class + ")";
        str += " (timestamp: " + timestamp + ")";
        str += " (average: " + average + ")";
        return str;
    }

}

}
