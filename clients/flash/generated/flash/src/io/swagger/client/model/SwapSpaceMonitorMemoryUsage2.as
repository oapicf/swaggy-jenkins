package io.swagger.client.model {


    [XmlRootNode(name="SwapSpaceMonitorMemoryUsage2")]
    public class SwapSpaceMonitorMemoryUsage2 {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="availablePhysicalMemory")]
        public var availablePhysicalMemory: Number = NaN;
                [XmlElement(name="availableSwapSpace")]
        public var availableSwapSpace: Number = NaN;
                [XmlElement(name="totalPhysicalMemory")]
        public var totalPhysicalMemory: Number = NaN;
                [XmlElement(name="totalSwapSpace")]
        public var totalSwapSpace: Number = NaN;

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
