package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.QueueBlockedItem;

    public class QueueList implements ListWrapper {
        // This declaration below of _Queue_obj_class is to force flash compiler to include this class
        private var _queue_obj_class: io.swagger.client.model.Queue = null;
        [XmlElements(name="queue", type="io.swagger.client.model.Queue")]
        public var queue: Array = new Array();

        public function getList(): Array{
            return queue;
        }

}

}
