package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class FreeStyleProjectactionsList implements ListWrapper {
        // This declaration below of _FreeStyleProjectactions_obj_class is to force flash compiler to include this class
        private var _freeStyleProjectactions_obj_class: io.swagger.client.model.FreeStyleProjectactions = null;
        [XmlElements(name="freeStyleProjectactions", type="io.swagger.client.model.FreeStyleProjectactions")]
        public var freeStyleProjectactions: Array = new Array();

        public function getList(): Array{
            return freeStyleProjectactions;
        }

}

}
