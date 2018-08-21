package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.BranchImpllinks;
import org.openapitools.client.model.BranchImplpermissions;
import org.openapitools.client.model.PipelineRunImpl;
import org.openapitools.client.model.StringParameterDefinition;

    public class BranchImplList implements ListWrapper {
        // This declaration below of _BranchImpl_obj_class is to force flash compiler to include this class
        private var _branchImpl_obj_class: org.openapitools.client.model.BranchImpl = null;
        [XmlElements(name="branchImpl", type="org.openapitools.client.model.BranchImpl")]
        public var branchImpl: Array = new Array();

        public function getList(): Array{
            return branchImpl;
        }

}

}
