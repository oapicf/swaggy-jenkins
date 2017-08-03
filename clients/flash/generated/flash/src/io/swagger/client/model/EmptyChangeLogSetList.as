package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class EmptyChangeLogSetList implements ListWrapper {
        // This declaration below of _EmptyChangeLogSet_obj_class is to force flash compiler to include this class
        private var _emptyChangeLogSet_obj_class: io.swagger.client.model.EmptyChangeLogSet = null;
        [XmlElements(name="emptyChangeLogSet", type="io.swagger.client.model.EmptyChangeLogSet")]
        public var emptyChangeLogSet: Array = new Array();

        public function getList(): Array{
            return emptyChangeLogSet;
        }

}

}
