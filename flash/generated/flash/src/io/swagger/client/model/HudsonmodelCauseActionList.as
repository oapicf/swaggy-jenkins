package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.HudsonmodelCauseUserIdCause;

    public class HudsonmodelCauseActionList implements ListWrapper {
        // This declaration below of _hudsonmodelCauseAction_obj_class is to force flash compiler to include this class
        private var _hudsonmodelCauseAction_obj_class: io.swagger.client.model.HudsonmodelCauseAction = null;
        [XmlElements(name="hudsonmodelCauseAction", type="io.swagger.client.model.HudsonmodelCauseAction")]
        public var hudsonmodelCauseAction: Array = new Array();

        public function getList(): Array{
            return hudsonmodelCauseAction;
        }

}

}
