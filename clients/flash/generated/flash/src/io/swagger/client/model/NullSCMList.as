package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class NullSCMList implements ListWrapper {
        // This declaration below of _NullSCM_obj_class is to force flash compiler to include this class
        private var _nullSCM_obj_class: io.swagger.client.model.NullSCM = null;
        [XmlElements(name="nullSCM", type="io.swagger.client.model.NullSCM")]
        public var nullSCM: Array = new Array();

        public function getList(): Array{
            return nullSCM;
        }

}

}
