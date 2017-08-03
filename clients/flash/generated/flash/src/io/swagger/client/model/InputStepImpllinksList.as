package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Link;

    public class InputStepImpllinksList implements ListWrapper {
        // This declaration below of _InputStepImpllinks_obj_class is to force flash compiler to include this class
        private var _inputStepImpllinks_obj_class: io.swagger.client.model.InputStepImpllinks = null;
        [XmlElements(name="inputStepImpllinks", type="io.swagger.client.model.InputStepImpllinks")]
        public var inputStepImpllinks: Array = new Array();

        public function getList(): Array{
            return inputStepImpllinks;
        }

}

}
