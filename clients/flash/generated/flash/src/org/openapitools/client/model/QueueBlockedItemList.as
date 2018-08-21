package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.CauseAction;
import org.openapitools.client.model.FreeStyleProject;

    public class QueueBlockedItemList implements ListWrapper {
        // This declaration below of _QueueBlockedItem_obj_class is to force flash compiler to include this class
        private var _queueBlockedItem_obj_class: org.openapitools.client.model.QueueBlockedItem = null;
        [XmlElements(name="queueBlockedItem", type="org.openapitools.client.model.QueueBlockedItem")]
        public var queueBlockedItem: Array = new Array();

        public function getList(): Array{
            return queueBlockedItem;
        }

}

}
