package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class StringParameterValueList implements ListWrapper {
        // This declaration below of _StringParameterValue_obj_class is to force flash compiler to include this class
        private var _stringParameterValue_obj_class: io.swagger.client.model.StringParameterValue = null;
        [XmlElements(name="stringParameterValue", type="io.swagger.client.model.StringParameterValue")]
        public var stringParameterValue: Array = new Array();

        public function getList(): Array{
            return stringParameterValue;
        }

}

}
