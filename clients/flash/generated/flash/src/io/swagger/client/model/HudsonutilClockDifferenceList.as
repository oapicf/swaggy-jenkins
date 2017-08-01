package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class HudsonutilClockDifferenceList implements ListWrapper {
        // This declaration below of _hudsonutilClockDifference_obj_class is to force flash compiler to include this class
        private var _hudsonutilClockDifference_obj_class: io.swagger.client.model.HudsonutilClockDifference = null;
        [XmlElements(name="hudsonutilClockDifference", type="io.swagger.client.model.HudsonutilClockDifference")]
        public var hudsonutilClockDifference: Array = new Array();

        public function getList(): Array{
            return hudsonutilClockDifference;
        }

}

}
