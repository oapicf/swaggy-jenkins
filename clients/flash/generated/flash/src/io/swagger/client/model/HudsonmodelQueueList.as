package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.HudsonmodelQueueBlockedItem;

    public class HudsonmodelQueueList implements ListWrapper {
        // This declaration below of _hudsonmodelQueue_obj_class is to force flash compiler to include this class
        private var _hudsonmodelQueue_obj_class: io.swagger.client.model.HudsonmodelQueue = null;
        [XmlElements(name="hudsonmodelQueue", type="io.swagger.client.model.HudsonmodelQueue")]
        public var hudsonmodelQueue: Array = new Array();

        public function getList(): Array{
            return hudsonmodelQueue;
        }

}

}
