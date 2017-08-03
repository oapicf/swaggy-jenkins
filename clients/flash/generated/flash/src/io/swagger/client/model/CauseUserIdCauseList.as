package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class CauseUserIdCauseList implements ListWrapper {
        // This declaration below of _CauseUserIdCause_obj_class is to force flash compiler to include this class
        private var _causeUserIdCause_obj_class: io.swagger.client.model.CauseUserIdCause = null;
        [XmlElements(name="causeUserIdCause", type="io.swagger.client.model.CauseUserIdCause")]
        public var causeUserIdCause: Array = new Array();

        public function getList(): Array{
            return causeUserIdCause;
        }

}

}
