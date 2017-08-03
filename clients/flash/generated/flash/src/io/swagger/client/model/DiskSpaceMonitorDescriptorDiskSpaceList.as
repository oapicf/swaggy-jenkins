package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class DiskSpaceMonitorDescriptorDiskSpaceList implements ListWrapper {
        // This declaration below of _DiskSpaceMonitorDescriptorDiskSpace_obj_class is to force flash compiler to include this class
        private var _diskSpaceMonitorDescriptorDiskSpace_obj_class: io.swagger.client.model.DiskSpaceMonitorDescriptorDiskSpace = null;
        [XmlElements(name="diskSpaceMonitorDescriptorDiskSpace", type="io.swagger.client.model.DiskSpaceMonitorDescriptorDiskSpace")]
        public var diskSpaceMonitorDescriptorDiskSpace: Array = new Array();

        public function getList(): Array{
            return diskSpaceMonitorDescriptorDiskSpace;
        }

}

}
