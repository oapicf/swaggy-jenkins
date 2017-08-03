package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.CauseUserIdCause;

    public class CauseActionList implements ListWrapper {
        // This declaration below of _CauseAction_obj_class is to force flash compiler to include this class
        private var _causeAction_obj_class: io.swagger.client.model.CauseAction = null;
        [XmlElements(name="causeAction", type="io.swagger.client.model.CauseAction")]
        public var causeAction: Array = new Array();

        public function getList(): Array{
            return causeAction;
        }

}

}
