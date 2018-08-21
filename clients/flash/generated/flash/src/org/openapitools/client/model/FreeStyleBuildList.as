package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.CauseAction;
import org.openapitools.client.model.EmptyChangeLogSet;

    public class FreeStyleBuildList implements ListWrapper {
        // This declaration below of _FreeStyleBuild_obj_class is to force flash compiler to include this class
        private var _freeStyleBuild_obj_class: org.openapitools.client.model.FreeStyleBuild = null;
        [XmlElements(name="freeStyleBuild", type="org.openapitools.client.model.FreeStyleBuild")]
        public var freeStyleBuild: Array = new Array();

        public function getList(): Array{
            return freeStyleBuild;
        }

}

}
