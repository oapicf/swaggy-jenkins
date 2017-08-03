package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.BranchImpllinks;
import io.swagger.client.model.BranchImplpermissions;
import io.swagger.client.model.PipelineRunImpl;
import io.swagger.client.model.StringParameterDefinition;

    public class BranchImplList implements ListWrapper {
        // This declaration below of _BranchImpl_obj_class is to force flash compiler to include this class
        private var _branchImpl_obj_class: io.swagger.client.model.BranchImpl = null;
        [XmlElements(name="branchImpl", type="io.swagger.client.model.BranchImpl")]
        public var branchImpl: Array = new Array();

        public function getList(): Array{
            return branchImpl;
        }

}

}
