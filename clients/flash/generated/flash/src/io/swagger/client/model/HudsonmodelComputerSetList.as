package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.HudsonmodelHudsonMasterComputer;

    public class HudsonmodelComputerSetList implements ListWrapper {
        // This declaration below of _hudsonmodelComputerSet_obj_class is to force flash compiler to include this class
        private var _hudsonmodelComputerSet_obj_class: io.swagger.client.model.HudsonmodelComputerSet = null;
        [XmlElements(name="hudsonmodelComputerSet", type="io.swagger.client.model.HudsonmodelComputerSet")]
        public var hudsonmodelComputerSet: Array = new Array();

        public function getList(): Array{
            return hudsonmodelComputerSet;
        }

}

}
