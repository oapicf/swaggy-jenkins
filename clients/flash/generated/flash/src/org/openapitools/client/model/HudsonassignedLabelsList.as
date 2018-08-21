package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class HudsonassignedLabelsList implements ListWrapper {
        // This declaration below of _HudsonassignedLabels_obj_class is to force flash compiler to include this class
        private var _hudsonassignedLabels_obj_class: org.openapitools.client.model.HudsonassignedLabels = null;
        [XmlElements(name="hudsonassignedLabels", type="org.openapitools.client.model.HudsonassignedLabels")]
        public var hudsonassignedLabels: Array = new Array();

        public function getList(): Array{
            return hudsonassignedLabels;
        }

}

}
