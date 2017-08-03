package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.FreeStyleBuild;

    public class HudsonMasterComputerexecutorsList implements ListWrapper {
        // This declaration below of _HudsonMasterComputerexecutors_obj_class is to force flash compiler to include this class
        private var _hudsonMasterComputerexecutors_obj_class: io.swagger.client.model.HudsonMasterComputerexecutors = null;
        [XmlElements(name="hudsonMasterComputerexecutors", type="io.swagger.client.model.HudsonMasterComputerexecutors")]
        public var hudsonMasterComputerexecutors: Array = new Array();

        public function getList(): Array{
            return hudsonMasterComputerexecutors;
        }

}

}
