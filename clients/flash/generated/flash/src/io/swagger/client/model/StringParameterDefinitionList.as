package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.StringParameterValue;

    public class StringParameterDefinitionList implements ListWrapper {
        // This declaration below of _StringParameterDefinition_obj_class is to force flash compiler to include this class
        private var _stringParameterDefinition_obj_class: io.swagger.client.model.StringParameterDefinition = null;
        [XmlElements(name="stringParameterDefinition", type="io.swagger.client.model.StringParameterDefinition")]
        public var stringParameterDefinition: Array = new Array();

        public function getList(): Array{
            return stringParameterDefinition;
        }

}

}
