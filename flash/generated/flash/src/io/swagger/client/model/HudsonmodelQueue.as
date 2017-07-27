package io.swagger.client.model {

import io.swagger.client.model.HudsonmodelQueueBlockedItem;

    [XmlRootNode(name="HudsonmodelQueue")]
    public class HudsonmodelQueue {
                [XmlElement(name="_class")]
        public var class: String = null;
                // This declaration below of _items_obj_class is to force flash compiler to include this class
        private var _items_obj_class: Array = null;
        [XmlElementWrapper(name="items")]
        [XmlElements(name="items", type="Array")]
                public var items: Array = new Array();

    public function toString(): String {
        var str: String = "HudsonmodelQueue: ";
        str += " (class: " + class + ")";
        str += " (items: " + items + ")";
        return str;
    }

}

}
