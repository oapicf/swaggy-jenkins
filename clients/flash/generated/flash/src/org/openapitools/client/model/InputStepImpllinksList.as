package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Link;

    public class InputStepImpllinksList implements ListWrapper {
        // This declaration below of _InputStepImpllinks_obj_class is to force flash compiler to include this class
        private var _inputStepImpllinks_obj_class: org.openapitools.client.model.InputStepImpllinks = null;
        [XmlElements(name="inputStepImpllinks", type="org.openapitools.client.model.InputStepImpllinks")]
        public var inputStepImpllinks: Array = new Array();

        public function getList(): Array{
            return inputStepImpllinks;
        }

}

}
