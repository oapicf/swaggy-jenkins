package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class QueueItemImplList implements ListWrapper {
        // This declaration below of _QueueItemImpl_obj_class is to force flash compiler to include this class
        private var _queueItemImpl_obj_class: io.swagger.client.model.QueueItemImpl = null;
        [XmlElements(name="queueItemImpl", type="io.swagger.client.model.QueueItemImpl")]
        public var queueItemImpl: Array = new Array();

        public function getList(): Array{
            return queueItemImpl;
        }

}

}
