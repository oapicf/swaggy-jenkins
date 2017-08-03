package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.CauseAction;
import io.swagger.client.model.FreeStyleBuild;
import io.swagger.client.model.FreeStyleProject;

    public class QueueLeftItemList implements ListWrapper {
        // This declaration below of _QueueLeftItem_obj_class is to force flash compiler to include this class
        private var _queueLeftItem_obj_class: io.swagger.client.model.QueueLeftItem = null;
        [XmlElements(name="queueLeftItem", type="io.swagger.client.model.QueueLeftItem")]
        public var queueLeftItem: Array = new Array();

        public function getList(): Array{
            return queueLeftItem;
        }

}

}
