package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.HudsonMasterComputerexecutors;
import io.swagger.client.model.HudsonMasterComputermonitorData;
import io.swagger.client.model.Label1;

    public class HudsonMasterComputerList implements ListWrapper {
        // This declaration below of _HudsonMasterComputer_obj_class is to force flash compiler to include this class
        private var _hudsonMasterComputer_obj_class: io.swagger.client.model.HudsonMasterComputer = null;
        [XmlElements(name="hudsonMasterComputer", type="io.swagger.client.model.HudsonMasterComputer")]
        public var hudsonMasterComputer: Array = new Array();

        public function getList(): Array{
            return hudsonMasterComputer;
        }

}

}
