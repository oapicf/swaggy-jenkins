package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Link;

    public class BranchImpllinksList implements ListWrapper {
        // This declaration below of _BranchImpllinks_obj_class is to force flash compiler to include this class
        private var _branchImpllinks_obj_class: io.swagger.client.model.BranchImpllinks = null;
        [XmlElements(name="branchImpllinks", type="io.swagger.client.model.BranchImpllinks")]
        public var branchImpllinks: Array = new Array();

        public function getList(): Array{
            return branchImpllinks;
        }

}

}
