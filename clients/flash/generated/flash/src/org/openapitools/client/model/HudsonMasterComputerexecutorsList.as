package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.FreeStyleBuild;

    public class HudsonMasterComputerexecutorsList implements ListWrapper {
        // This declaration below of _HudsonMasterComputerexecutors_obj_class is to force flash compiler to include this class
        private var _hudsonMasterComputerexecutors_obj_class: org.openapitools.client.model.HudsonMasterComputerexecutors = null;
        [XmlElements(name="hudsonMasterComputerexecutors", type="org.openapitools.client.model.HudsonMasterComputerexecutors")]
        public var hudsonMasterComputerexecutors: Array = new Array();

        public function getList(): Array{
            return hudsonMasterComputerexecutors;
        }

}

}
