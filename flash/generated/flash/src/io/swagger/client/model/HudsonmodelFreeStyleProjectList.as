package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.HudsonmodelFreeStyleBuild;
import io.swagger.client.model.HudsonmodelFreeStyleProjectactions;
import io.swagger.client.model.HudsonmodelFreeStyleProjecthealthReport;
import io.swagger.client.model.HudsonscmNullSCM;

    public class HudsonmodelFreeStyleProjectList implements ListWrapper {
        // This declaration below of _hudsonmodelFreeStyleProject_obj_class is to force flash compiler to include this class
        private var _hudsonmodelFreeStyleProject_obj_class: io.swagger.client.model.HudsonmodelFreeStyleProject = null;
        [XmlElements(name="hudsonmodelFreeStyleProject", type="io.swagger.client.model.HudsonmodelFreeStyleProject")]
        public var hudsonmodelFreeStyleProject: Array = new Array();

        public function getList(): Array{
            return hudsonmodelFreeStyleProject;
        }

}

}
