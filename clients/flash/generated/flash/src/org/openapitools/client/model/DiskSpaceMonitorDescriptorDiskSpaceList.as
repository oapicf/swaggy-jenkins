package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class DiskSpaceMonitorDescriptorDiskSpaceList implements ListWrapper {
        // This declaration below of _DiskSpaceMonitorDescriptorDiskSpace_obj_class is to force flash compiler to include this class
        private var _diskSpaceMonitorDescriptorDiskSpace_obj_class: org.openapitools.client.model.DiskSpaceMonitorDescriptorDiskSpace = null;
        [XmlElements(name="diskSpaceMonitorDescriptorDiskSpace", type="org.openapitools.client.model.DiskSpaceMonitorDescriptorDiskSpace")]
        public var diskSpaceMonitorDescriptorDiskSpace: Array = new Array();

        public function getList(): Array{
            return diskSpaceMonitorDescriptorDiskSpace;
        }

}

}
