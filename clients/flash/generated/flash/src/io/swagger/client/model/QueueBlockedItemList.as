package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.CauseAction;
import io.swagger.client.model.FreeStyleProject;

    public class QueueBlockedItemList implements ListWrapper {
        // This declaration below of _QueueBlockedItem_obj_class is to force flash compiler to include this class
        private var _queueBlockedItem_obj_class: io.swagger.client.model.QueueBlockedItem = null;
        [XmlElements(name="queueBlockedItem", type="io.swagger.client.model.QueueBlockedItem")]
        public var queueBlockedItem: Array = new Array();

        public function getList(): Array{
            return queueBlockedItem;
        }

}

}
