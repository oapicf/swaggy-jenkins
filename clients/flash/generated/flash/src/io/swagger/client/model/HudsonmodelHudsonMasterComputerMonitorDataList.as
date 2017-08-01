package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace;
import io.swagger.client.model.HudsonnodeMonitorsResponseTimeMonitorData;
import io.swagger.client.model.HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2;
import io.swagger.client.model.HudsonutilClockDifference;

    public class HudsonmodelHudsonMasterComputerMonitorDataList implements ListWrapper {
        // This declaration below of _hudsonmodelHudsonMasterComputer_monitorData_obj_class is to force flash compiler to include this class
        private var _hudsonmodelHudsonMasterComputerMonitorData_obj_class: io.swagger.client.model.HudsonmodelHudsonMasterComputerMonitorData = null;
        [XmlElements(name="hudsonmodelHudsonMasterComputerMonitorData", type="io.swagger.client.model.HudsonmodelHudsonMasterComputerMonitorData")]
        public var hudsonmodelHudsonMasterComputerMonitorData: Array = new Array();

        public function getList(): Array{
            return hudsonmodelHudsonMasterComputerMonitorData;
        }

}

}
