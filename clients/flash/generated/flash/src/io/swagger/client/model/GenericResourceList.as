package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class GenericResourceList implements ListWrapper {
        // This declaration below of _GenericResource_obj_class is to force flash compiler to include this class
        private var _genericResource_obj_class: io.swagger.client.model.GenericResource = null;
        [XmlElements(name="genericResource", type="io.swagger.client.model.GenericResource")]
        public var genericResource: Array = new Array();

        public function getList(): Array{
            return genericResource;
        }

}

}
