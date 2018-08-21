package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.CauseAction;
import org.openapitools.client.model.FreeStyleBuild;
import org.openapitools.client.model.FreeStyleProject;

    public class QueueLeftItemList implements ListWrapper {
        // This declaration below of _QueueLeftItem_obj_class is to force flash compiler to include this class
        private var _queueLeftItem_obj_class: org.openapitools.client.model.QueueLeftItem = null;
        [XmlElements(name="queueLeftItem", type="org.openapitools.client.model.QueueLeftItem")]
        public var queueLeftItem: Array = new Array();

        public function getList(): Array{
            return queueLeftItem;
        }

}

}
