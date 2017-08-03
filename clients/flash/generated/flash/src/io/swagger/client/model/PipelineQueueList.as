package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.QueueItemImpl;

    public class PipelineQueueList implements ListWrapper {
        // This declaration below of _PipelineQueue_obj_class is to force flash compiler to include this class
        private var _pipelineQueue_obj_class: io.swagger.client.model.PipelineQueue = null;
        [XmlElements(name="pipelineQueue", type="io.swagger.client.model.PipelineQueue")]
        public var pipelineQueue: Array = new Array();

        public function getList(): Array{
            return pipelineQueue;
        }

}

}
