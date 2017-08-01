package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class HudsonmodelAllViewList implements ListWrapper {
        // This declaration below of _hudsonmodelAllView_obj_class is to force flash compiler to include this class
        private var _hudsonmodelAllView_obj_class: io.swagger.client.model.HudsonmodelAllView = null;
        [XmlElements(name="hudsonmodelAllView", type="io.swagger.client.model.HudsonmodelAllView")]
        public var hudsonmodelAllView: Array = new Array();

        public function getList(): Array{
            return hudsonmodelAllView;
        }

}

}
