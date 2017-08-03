package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class HudsonassignedLabelsList implements ListWrapper {
        // This declaration below of _HudsonassignedLabels_obj_class is to force flash compiler to include this class
        private var _hudsonassignedLabels_obj_class: io.swagger.client.model.HudsonassignedLabels = null;
        [XmlElements(name="hudsonassignedLabels", type="io.swagger.client.model.HudsonassignedLabels")]
        public var hudsonassignedLabels: Array = new Array();

        public function getList(): Array{
            return hudsonassignedLabels;
        }

}

}
