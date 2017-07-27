package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.HudsonmodelCauseAction;
import io.swagger.client.model.HudsonmodelFreeStyleBuild;
import io.swagger.client.model.HudsonmodelFreeStyleProject;

    public class HudsonmodelQueueLeftItemList implements ListWrapper {
        // This declaration below of _hudsonmodelQueueLeftItem_obj_class is to force flash compiler to include this class
        private var _hudsonmodelQueueLeftItem_obj_class: io.swagger.client.model.HudsonmodelQueueLeftItem = null;
        [XmlElements(name="hudsonmodelQueueLeftItem", type="io.swagger.client.model.HudsonmodelQueueLeftItem")]
        public var hudsonmodelQueueLeftItem: Array = new Array();

        public function getList(): Array{
            return hudsonmodelQueueLeftItem;
        }

}

}
