package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.HudsonmodelAllView;
import io.swagger.client.model.HudsonmodelFreeStyleProject;
import io.swagger.client.model.HudsonmodelHudsonassignedLabels;
import io.swagger.client.model.JenkinsmodelUnlabeledLoadStatistics;

    public class HudsonmodelHudsonList implements ListWrapper {
        // This declaration below of _hudsonmodelHudson_obj_class is to force flash compiler to include this class
        private var _hudsonmodelHudson_obj_class: io.swagger.client.model.HudsonmodelHudson = null;
        [XmlElements(name="hudsonmodelHudson", type="io.swagger.client.model.HudsonmodelHudson")]
        public var hudsonmodelHudson: Array = new Array();

        public function getList(): Array{
            return hudsonmodelHudson;
        }

}

}
