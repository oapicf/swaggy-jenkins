package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.HudsonMasterComputer;

    public class ComputerSetList implements ListWrapper {
        // This declaration below of _ComputerSet_obj_class is to force flash compiler to include this class
        private var _computerSet_obj_class: io.swagger.client.model.ComputerSet = null;
        [XmlElements(name="computerSet", type="io.swagger.client.model.ComputerSet")]
        public var computerSet: Array = new Array();

        public function getList(): Array{
            return computerSet;
        }

}

}
