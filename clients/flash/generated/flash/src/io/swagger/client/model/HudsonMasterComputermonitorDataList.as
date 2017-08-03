package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.ClockDifference;
import io.swagger.client.model.DiskSpaceMonitorDescriptorDiskSpace;
import io.swagger.client.model.ResponseTimeMonitorData;
import io.swagger.client.model.SwapSpaceMonitorMemoryUsage2;

    public class HudsonMasterComputermonitorDataList implements ListWrapper {
        // This declaration below of _HudsonMasterComputermonitorData_obj_class is to force flash compiler to include this class
        private var _hudsonMasterComputermonitorData_obj_class: io.swagger.client.model.HudsonMasterComputermonitorData = null;
        [XmlElements(name="hudsonMasterComputermonitorData", type="io.swagger.client.model.HudsonMasterComputermonitorData")]
        public var hudsonMasterComputermonitorData: Array = new Array();

        public function getList(): Array{
            return hudsonMasterComputermonitorData;
        }

}

}
