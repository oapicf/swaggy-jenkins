package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.CauseUserIdCause;

    public class CauseActionList implements ListWrapper {
        // This declaration below of _CauseAction_obj_class is to force flash compiler to include this class
        private var _causeAction_obj_class: org.openapitools.client.model.CauseAction = null;
        [XmlElements(name="causeAction", type="org.openapitools.client.model.CauseAction")]
        public var causeAction: Array = new Array();

        public function getList(): Array{
            return causeAction;
        }

}

}
