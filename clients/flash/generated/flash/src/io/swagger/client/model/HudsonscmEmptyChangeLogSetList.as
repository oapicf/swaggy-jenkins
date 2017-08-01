package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class HudsonscmEmptyChangeLogSetList implements ListWrapper {
        // This declaration below of _hudsonscmEmptyChangeLogSet_obj_class is to force flash compiler to include this class
        private var _hudsonscmEmptyChangeLogSet_obj_class: io.swagger.client.model.HudsonscmEmptyChangeLogSet = null;
        [XmlElements(name="hudsonscmEmptyChangeLogSet", type="io.swagger.client.model.HudsonscmEmptyChangeLogSet")]
        public var hudsonscmEmptyChangeLogSet: Array = new Array();

        public function getList(): Array{
            return hudsonscmEmptyChangeLogSet;
        }

}

}
