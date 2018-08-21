package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class GenericResourceList implements ListWrapper {
        // This declaration below of _GenericResource_obj_class is to force flash compiler to include this class
        private var _genericResource_obj_class: org.openapitools.client.model.GenericResource = null;
        [XmlElements(name="genericResource", type="org.openapitools.client.model.GenericResource")]
        public var genericResource: Array = new Array();

        public function getList(): Array{
            return genericResource;
        }

}

}
