package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Link;

    public class BranchImpllinksList implements ListWrapper {
        // This declaration below of _BranchImpllinks_obj_class is to force flash compiler to include this class
        private var _branchImpllinks_obj_class: org.openapitools.client.model.BranchImpllinks = null;
        [XmlElements(name="branchImpllinks", type="org.openapitools.client.model.BranchImpllinks")]
        public var branchImpllinks: Array = new Array();

        public function getList(): Array{
            return branchImpllinks;
        }

}

}
