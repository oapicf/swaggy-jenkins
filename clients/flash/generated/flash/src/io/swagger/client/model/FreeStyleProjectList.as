package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.FreeStyleBuild;
import io.swagger.client.model.FreeStyleProjectactions;
import io.swagger.client.model.FreeStyleProjecthealthReport;
import io.swagger.client.model.NullSCM;

    public class FreeStyleProjectList implements ListWrapper {
        // This declaration below of _FreeStyleProject_obj_class is to force flash compiler to include this class
        private var _freeStyleProject_obj_class: io.swagger.client.model.FreeStyleProject = null;
        [XmlElements(name="freeStyleProject", type="io.swagger.client.model.FreeStyleProject")]
        public var freeStyleProject: Array = new Array();

        public function getList(): Array{
            return freeStyleProject;
        }

}

}
