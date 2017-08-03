package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.InputStepImpllinks;
import io.swagger.client.model.StringParameterDefinition;

    public class InputStepImplList implements ListWrapper {
        // This declaration below of _InputStepImpl_obj_class is to force flash compiler to include this class
        private var _inputStepImpl_obj_class: io.swagger.client.model.InputStepImpl = null;
        [XmlElements(name="inputStepImpl", type="io.swagger.client.model.InputStepImpl")]
        public var inputStepImpl: Array = new Array();

        public function getList(): Array{
            return inputStepImpl;
        }

}

}
