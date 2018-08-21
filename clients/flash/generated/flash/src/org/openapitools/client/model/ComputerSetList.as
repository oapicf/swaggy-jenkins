package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.HudsonMasterComputer;

    public class ComputerSetList implements ListWrapper {
        // This declaration below of _ComputerSet_obj_class is to force flash compiler to include this class
        private var _computerSet_obj_class: org.openapitools.client.model.ComputerSet = null;
        [XmlElements(name="computerSet", type="org.openapitools.client.model.ComputerSet")]
        public var computerSet: Array = new Array();

        public function getList(): Array{
            return computerSet;
        }

}

}
