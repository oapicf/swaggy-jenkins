package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.FreeStyleBuild;
import org.openapitools.client.model.FreeStyleProjectactions;
import org.openapitools.client.model.FreeStyleProjecthealthReport;
import org.openapitools.client.model.NullSCM;

    public class FreeStyleProjectList implements ListWrapper {
        // This declaration below of _FreeStyleProject_obj_class is to force flash compiler to include this class
        private var _freeStyleProject_obj_class: org.openapitools.client.model.FreeStyleProject = null;
        [XmlElements(name="freeStyleProject", type="org.openapitools.client.model.FreeStyleProject")]
        public var freeStyleProject: Array = new Array();

        public function getList(): Array{
            return freeStyleProject;
        }

}

}
