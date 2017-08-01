package io.swagger.client.model {


    [XmlRootNode(name="HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace")]
    public class HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="timestamp")]
        public var timestamp: Number = NaN;
                [XmlElement(name="path")]
        public var path: String = null;
                [XmlElement(name="size")]
        public var size: Number = NaN;

    public function toString(): String {
        var str: String = "HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace: ";
        str += " (class: " + class + ")";
        str += " (timestamp: " + timestamp + ")";
        str += " (path: " + path + ")";
        str += " (size: " + size + ")";
        return str;
    }

}

}
