package org.openapitools.client.model {

import org.openapitools.client.model.HudsonMasterComputer;

    [XmlRootNode(name="ComputerSet")]
    public class ComputerSet {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="busyExecutors")]
        public var busyExecutors: Number = 0;
                // This declaration below of _computer_obj_class is to force flash compiler to include this class
        private var _computer_obj_class: Array = null;
        [XmlElementWrapper(name="computer")]
        [XmlElements(name="computer", type="Array")]
                public var computer: Array = new Array();
                [XmlElement(name="displayName")]
        public var displayName: String = null;
                [XmlElement(name="totalExecutors")]
        public var totalExecutors: Number = 0;

    public function toString(): String {
        var str: String = "ComputerSet: ";
        str += " (class: " + class + ")";
        str += " (busyExecutors: " + busyExecutors + ")";
        str += " (computer: " + computer + ")";
        str += " (displayName: " + displayName + ")";
        str += " (totalExecutors: " + totalExecutors + ")";
        return str;
    }

}

}
