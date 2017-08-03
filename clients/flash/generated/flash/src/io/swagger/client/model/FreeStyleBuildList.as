package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.CauseAction;
import io.swagger.client.model.EmptyChangeLogSet;

    public class FreeStyleBuildList implements ListWrapper {
        // This declaration below of _FreeStyleBuild_obj_class is to force flash compiler to include this class
        private var _freeStyleBuild_obj_class: io.swagger.client.model.FreeStyleBuild = null;
        [XmlElements(name="freeStyleBuild", type="io.swagger.client.model.FreeStyleBuild")]
        public var freeStyleBuild: Array = new Array();

        public function getList(): Array{
            return freeStyleBuild;
        }

}

}
