package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.HudsonmodelCauseAction;
import io.swagger.client.model.HudsonscmEmptyChangeLogSet;

    public class HudsonmodelFreeStyleBuildList implements ListWrapper {
        // This declaration below of _hudsonmodelFreeStyleBuild_obj_class is to force flash compiler to include this class
        private var _hudsonmodelFreeStyleBuild_obj_class: io.swagger.client.model.HudsonmodelFreeStyleBuild = null;
        [XmlElements(name="hudsonmodelFreeStyleBuild", type="io.swagger.client.model.HudsonmodelFreeStyleBuild")]
        public var hudsonmodelFreeStyleBuild: Array = new Array();

        public function getList(): Array{
            return hudsonmodelFreeStyleBuild;
        }

}

}
