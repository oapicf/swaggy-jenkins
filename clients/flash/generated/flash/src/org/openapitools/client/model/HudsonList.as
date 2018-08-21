package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.AllView;
import org.openapitools.client.model.FreeStyleProject;
import org.openapitools.client.model.HudsonassignedLabels;
import org.openapitools.client.model.UnlabeledLoadStatistics;

    public class HudsonList implements ListWrapper {
        // This declaration below of _Hudson_obj_class is to force flash compiler to include this class
        private var _hudson_obj_class: org.openapitools.client.model.Hudson = null;
        [XmlElements(name="hudson", type="org.openapitools.client.model.Hudson")]
        public var hudson: Array = new Array();

        public function getList(): Array{
            return hudson;
        }

}

}
