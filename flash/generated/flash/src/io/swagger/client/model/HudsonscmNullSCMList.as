package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class HudsonscmNullSCMList implements ListWrapper {
        // This declaration below of _hudsonscmNullSCM_obj_class is to force flash compiler to include this class
        private var _hudsonscmNullSCM_obj_class: io.swagger.client.model.HudsonscmNullSCM = null;
        [XmlElements(name="hudsonscmNullSCM", type="io.swagger.client.model.HudsonscmNullSCM")]
        public var hudsonscmNullSCM: Array = new Array();

        public function getList(): Array{
            return hudsonscmNullSCM;
        }

}

}
