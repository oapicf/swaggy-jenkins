package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.HudsonmodelCauseAction;
import io.swagger.client.model.HudsonmodelFreeStyleProject;

    public class HudsonmodelQueueBlockedItemList implements ListWrapper {
        // This declaration below of _hudsonmodelQueueBlockedItem_obj_class is to force flash compiler to include this class
        private var _hudsonmodelQueueBlockedItem_obj_class: io.swagger.client.model.HudsonmodelQueueBlockedItem = null;
        [XmlElements(name="hudsonmodelQueueBlockedItem", type="io.swagger.client.model.HudsonmodelQueueBlockedItem")]
        public var hudsonmodelQueueBlockedItem: Array = new Array();

        public function getList(): Array{
            return hudsonmodelQueueBlockedItem;
        }

}

}
