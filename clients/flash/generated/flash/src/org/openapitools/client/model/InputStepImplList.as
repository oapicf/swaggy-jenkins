package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.InputStepImpllinks;
import org.openapitools.client.model.StringParameterDefinition;

    public class InputStepImplList implements ListWrapper {
        // This declaration below of _InputStepImpl_obj_class is to force flash compiler to include this class
        private var _inputStepImpl_obj_class: org.openapitools.client.model.InputStepImpl = null;
        [XmlElements(name="inputStepImpl", type="org.openapitools.client.model.InputStepImpl")]
        public var inputStepImpl: Array = new Array();

        public function getList(): Array{
            return inputStepImpl;
        }

}

}
