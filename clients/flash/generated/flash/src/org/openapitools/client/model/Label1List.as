package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class Label1List implements ListWrapper {
        // This declaration below of _Label1_obj_class is to force flash compiler to include this class
        private var _label1_obj_class: org.openapitools.client.model.Label1 = null;
        [XmlElements(name="label1", type="org.openapitools.client.model.Label1")]
        public var label1: Array = new Array();

        public function getList(): Array{
            return label1;
        }

}

}
