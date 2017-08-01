package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class HudsonmodelStringParameterValueList implements ListWrapper {
        // This declaration below of _hudsonmodelStringParameterValue_obj_class is to force flash compiler to include this class
        private var _hudsonmodelStringParameterValue_obj_class: io.swagger.client.model.HudsonmodelStringParameterValue = null;
        [XmlElements(name="hudsonmodelStringParameterValue", type="io.swagger.client.model.HudsonmodelStringParameterValue")]
        public var hudsonmodelStringParameterValue: Array = new Array();

        public function getList(): Array{
            return hudsonmodelStringParameterValue;
        }

}

}
