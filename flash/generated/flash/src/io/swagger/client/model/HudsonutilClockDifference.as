package io.swagger.client.model {


    [XmlRootNode(name="HudsonutilClockDifference")]
    public class HudsonutilClockDifference {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="diff")]
        public var diff: Number = NaN;

    public function toString(): String {
        var str: String = "HudsonutilClockDifference: ";
        str += " (class: " + class + ")";
        str += " (diff: " + diff + ")";
        return str;
    }

}

}
