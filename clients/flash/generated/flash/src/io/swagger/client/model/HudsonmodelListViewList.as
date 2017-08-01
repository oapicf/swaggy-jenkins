package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.HudsonmodelFreeStyleProject;

    public class HudsonmodelListViewList implements ListWrapper {
        // This declaration below of _hudsonmodelListView_obj_class is to force flash compiler to include this class
        private var _hudsonmodelListView_obj_class: io.swagger.client.model.HudsonmodelListView = null;
        [XmlElements(name="hudsonmodelListView", type="io.swagger.client.model.HudsonmodelListView")]
        public var hudsonmodelListView: Array = new Array();

        public function getList(): Array{
            return hudsonmodelListView;
        }

}

}
