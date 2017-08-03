package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.AllView;
import io.swagger.client.model.FreeStyleProject;
import io.swagger.client.model.HudsonassignedLabels;
import io.swagger.client.model.UnlabeledLoadStatistics;

    public class HudsonList implements ListWrapper {
        // This declaration below of _Hudson_obj_class is to force flash compiler to include this class
        private var _hudson_obj_class: io.swagger.client.model.Hudson = null;
        [XmlElements(name="hudson", type="io.swagger.client.model.Hudson")]
        public var hudson: Array = new Array();

        public function getList(): Array{
            return hudson;
        }

}

}
