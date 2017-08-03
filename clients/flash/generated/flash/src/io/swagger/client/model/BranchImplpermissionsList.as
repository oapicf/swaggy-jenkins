package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class BranchImplpermissionsList implements ListWrapper {
        // This declaration below of _BranchImplpermissions_obj_class is to force flash compiler to include this class
        private var _branchImplpermissions_obj_class: io.swagger.client.model.BranchImplpermissions = null;
        [XmlElements(name="branchImplpermissions", type="io.swagger.client.model.BranchImplpermissions")]
        public var branchImplpermissions: Array = new Array();

        public function getList(): Array{
            return branchImplpermissions;
        }

}

}
