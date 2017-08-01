package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpaceList implements ListWrapper {
        // This declaration below of _hudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace_obj_class is to force flash compiler to include this class
        private var _hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace_obj_class: io.swagger.client.model.HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace = null;
        [XmlElements(name="hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace", type="io.swagger.client.model.HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace")]
        public var hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace: Array = new Array();

        public function getList(): Array{
            return hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace;
        }

}

}
