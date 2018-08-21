package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.QueueBlockedItem;

    public class QueueList implements ListWrapper {
        // This declaration below of _Queue_obj_class is to force flash compiler to include this class
        private var _queue_obj_class: org.openapitools.client.model.Queue = null;
        [XmlElements(name="queue", type="org.openapitools.client.model.Queue")]
        public var queue: Array = new Array();

        public function getList(): Array{
            return queue;
        }

}

}
