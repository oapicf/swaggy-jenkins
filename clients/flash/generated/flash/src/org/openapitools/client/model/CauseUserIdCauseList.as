package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class CauseUserIdCauseList implements ListWrapper {
        // This declaration below of _CauseUserIdCause_obj_class is to force flash compiler to include this class
        private var _causeUserIdCause_obj_class: org.openapitools.client.model.CauseUserIdCause = null;
        [XmlElements(name="causeUserIdCause", type="org.openapitools.client.model.CauseUserIdCause")]
        public var causeUserIdCause: Array = new Array();

        public function getList(): Array{
            return causeUserIdCause;
        }

}

}
