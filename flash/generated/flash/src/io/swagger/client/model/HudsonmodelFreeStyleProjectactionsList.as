package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class HudsonmodelFreeStyleProjectactionsList implements ListWrapper {
        // This declaration below of _hudsonmodelFreeStyleProjectactions_obj_class is to force flash compiler to include this class
        private var _hudsonmodelFreeStyleProjectactions_obj_class: io.swagger.client.model.HudsonmodelFreeStyleProjectactions = null;
        [XmlElements(name="hudsonmodelFreeStyleProjectactions", type="io.swagger.client.model.HudsonmodelFreeStyleProjectactions")]
        public var hudsonmodelFreeStyleProjectactions: Array = new Array();

        public function getList(): Array{
            return hudsonmodelFreeStyleProjectactions;
        }

}

}
