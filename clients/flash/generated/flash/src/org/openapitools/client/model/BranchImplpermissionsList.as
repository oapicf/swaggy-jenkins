package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class BranchImplpermissionsList implements ListWrapper {
        // This declaration below of _BranchImplpermissions_obj_class is to force flash compiler to include this class
        private var _branchImplpermissions_obj_class: org.openapitools.client.model.BranchImplpermissions = null;
        [XmlElements(name="branchImplpermissions", type="org.openapitools.client.model.BranchImplpermissions")]
        public var branchImplpermissions: Array = new Array();

        public function getList(): Array{
            return branchImplpermissions;
        }

}

}
