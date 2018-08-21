package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.HudsonMasterComputerexecutors;
import org.openapitools.client.model.HudsonMasterComputermonitorData;
import org.openapitools.client.model.Label1;

    public class HudsonMasterComputerList implements ListWrapper {
        // This declaration below of _HudsonMasterComputer_obj_class is to force flash compiler to include this class
        private var _hudsonMasterComputer_obj_class: org.openapitools.client.model.HudsonMasterComputer = null;
        [XmlElements(name="hudsonMasterComputer", type="org.openapitools.client.model.HudsonMasterComputer")]
        public var hudsonMasterComputer: Array = new Array();

        public function getList(): Array{
            return hudsonMasterComputer;
        }

}

}
