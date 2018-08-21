package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class ClockDifferenceList implements ListWrapper {
        // This declaration below of _ClockDifference_obj_class is to force flash compiler to include this class
        private var _clockDifference_obj_class: org.openapitools.client.model.ClockDifference = null;
        [XmlElements(name="clockDifference", type="org.openapitools.client.model.ClockDifference")]
        public var clockDifference: Array = new Array();

        public function getList(): Array{
            return clockDifference;
        }

}

}
