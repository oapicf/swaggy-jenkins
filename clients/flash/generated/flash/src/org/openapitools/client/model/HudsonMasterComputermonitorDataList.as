package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ClockDifference;
import org.openapitools.client.model.DiskSpaceMonitorDescriptorDiskSpace;
import org.openapitools.client.model.ResponseTimeMonitorData;
import org.openapitools.client.model.SwapSpaceMonitorMemoryUsage2;

    public class HudsonMasterComputermonitorDataList implements ListWrapper {
        // This declaration below of _HudsonMasterComputermonitorData_obj_class is to force flash compiler to include this class
        private var _hudsonMasterComputermonitorData_obj_class: org.openapitools.client.model.HudsonMasterComputermonitorData = null;
        [XmlElements(name="hudsonMasterComputermonitorData", type="org.openapitools.client.model.HudsonMasterComputermonitorData")]
        public var hudsonMasterComputermonitorData: Array = new Array();

        public function getList(): Array{
            return hudsonMasterComputermonitorData;
        }

}

}
