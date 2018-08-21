package org.openapitools.client.model {


    [XmlRootNode(name="SwapSpaceMonitorMemoryUsage2")]
    public class SwapSpaceMonitorMemoryUsage2 {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="availablePhysicalMemory")]
        public var availablePhysicalMemory: Number = 0;
                [XmlElement(name="availableSwapSpace")]
        public var availableSwapSpace: Number = 0;
                [XmlElement(name="totalPhysicalMemory")]
        public var totalPhysicalMemory: Number = 0;
                [XmlElement(name="totalSwapSpace")]
        public var totalSwapSpace: Number = 0;

    public function toString(): String {
        var str: String = "SwapSpaceMonitorMemoryUsage2: ";
        str += " (class: " + class + ")";
        str += " (availablePhysicalMemory: " + availablePhysicalMemory + ")";
        str += " (availableSwapSpace: " + availableSwapSpace + ")";
        str += " (totalPhysicalMemory: " + totalPhysicalMemory + ")";
        str += " (totalSwapSpace: " + totalSwapSpace + ")";
        return str;
    }

}

}
