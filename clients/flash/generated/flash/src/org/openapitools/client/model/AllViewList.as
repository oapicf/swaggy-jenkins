package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class AllViewList implements ListWrapper {
        // This declaration below of _AllView_obj_class is to force flash compiler to include this class
        private var _allView_obj_class: org.openapitools.client.model.AllView = null;
        [XmlElements(name="allView", type="org.openapitools.client.model.AllView")]
        public var allView: Array = new Array();

        public function getList(): Array{
            return allView;
        }

}

}
