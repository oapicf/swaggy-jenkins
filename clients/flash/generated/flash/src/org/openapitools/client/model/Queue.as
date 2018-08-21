package org.openapitools.client.model {

import org.openapitools.client.model.QueueBlockedItem;

    [XmlRootNode(name="Queue")]
    public class Queue {
                [XmlElement(name="_class")]
        public var class: String = null;
                // This declaration below of _items_obj_class is to force flash compiler to include this class
        private var _items_obj_class: Array = null;
        [XmlElementWrapper(name="items")]
        [XmlElements(name="items", type="Array")]
                public var items: Array = new Array();

    public function toString(): String {
        var str: String = "Queue: ";
        str += " (class: " + class + ")";
        str += " (items: " + items + ")";
        return str;
    }

}

}
