package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.HudsonmodelStringParameterValue;

    public class HudsonmodelStringParameterDefinitionList implements ListWrapper {
        // This declaration below of _hudsonmodelStringParameterDefinition_obj_class is to force flash compiler to include this class
        private var _hudsonmodelStringParameterDefinition_obj_class: io.swagger.client.model.HudsonmodelStringParameterDefinition = null;
        [XmlElements(name="hudsonmodelStringParameterDefinition", type="io.swagger.client.model.HudsonmodelStringParameterDefinition")]
        public var hudsonmodelStringParameterDefinition: Array = new Array();

        public function getList(): Array{
            return hudsonmodelStringParameterDefinition;
        }

}

}
