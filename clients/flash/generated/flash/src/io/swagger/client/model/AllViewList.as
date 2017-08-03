package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class AllViewList implements ListWrapper {
        // This declaration below of _AllView_obj_class is to force flash compiler to include this class
        private var _allView_obj_class: io.swagger.client.model.AllView = null;
        [XmlElements(name="allView", type="io.swagger.client.model.AllView")]
        public var allView: Array = new Array();

        public function getList(): Array{
            return allView;
        }

}

}
