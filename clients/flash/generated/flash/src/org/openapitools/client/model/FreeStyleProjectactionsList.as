package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class FreeStyleProjectactionsList implements ListWrapper {
        // This declaration below of _FreeStyleProjectactions_obj_class is to force flash compiler to include this class
        private var _freeStyleProjectactions_obj_class: org.openapitools.client.model.FreeStyleProjectactions = null;
        [XmlElements(name="freeStyleProjectactions", type="org.openapitools.client.model.FreeStyleProjectactions")]
        public var freeStyleProjectactions: Array = new Array();

        public function getList(): Array{
            return freeStyleProjectactions;
        }

}

}
