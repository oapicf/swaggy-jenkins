package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class NullSCMList implements ListWrapper {
        // This declaration below of _NullSCM_obj_class is to force flash compiler to include this class
        private var _nullSCM_obj_class: org.openapitools.client.model.NullSCM = null;
        [XmlElements(name="nullSCM", type="org.openapitools.client.model.NullSCM")]
        public var nullSCM: Array = new Array();

        public function getList(): Array{
            return nullSCM;
        }

}

}
