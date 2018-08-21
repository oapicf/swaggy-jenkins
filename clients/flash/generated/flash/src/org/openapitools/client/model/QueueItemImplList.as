package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class QueueItemImplList implements ListWrapper {
        // This declaration below of _QueueItemImpl_obj_class is to force flash compiler to include this class
        private var _queueItemImpl_obj_class: org.openapitools.client.model.QueueItemImpl = null;
        [XmlElements(name="queueItemImpl", type="org.openapitools.client.model.QueueItemImpl")]
        public var queueItemImpl: Array = new Array();

        public function getList(): Array{
            return queueItemImpl;
        }

}

}
