package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class ClockDifferenceList implements ListWrapper {
        // This declaration below of _ClockDifference_obj_class is to force flash compiler to include this class
        private var _clockDifference_obj_class: io.swagger.client.model.ClockDifference = null;
        [XmlElements(name="clockDifference", type="io.swagger.client.model.ClockDifference")]
        public var clockDifference: Array = new Array();

        public function getList(): Array{
            return clockDifference;
        }

}

}
