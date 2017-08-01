package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.HudsonmodelHudsonMasterComputerMonitorData;
import io.swagger.client.model.HudsonmodelHudsonMasterComputerexecutors;
import io.swagger.client.model.HudsonmodelLabel1;

    public class HudsonmodelHudsonMasterComputerList implements ListWrapper {
        // This declaration below of _hudsonmodelHudsonMasterComputer_obj_class is to force flash compiler to include this class
        private var _hudsonmodelHudsonMasterComputer_obj_class: io.swagger.client.model.HudsonmodelHudsonMasterComputer = null;
        [XmlElements(name="hudsonmodelHudsonMasterComputer", type="io.swagger.client.model.HudsonmodelHudsonMasterComputer")]
        public var hudsonmodelHudsonMasterComputer: Array = new Array();

        public function getList(): Array{
            return hudsonmodelHudsonMasterComputer;
        }

}

}
