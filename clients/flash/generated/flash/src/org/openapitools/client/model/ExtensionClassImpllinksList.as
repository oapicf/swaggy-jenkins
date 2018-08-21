package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Link;

    public class ExtensionClassImpllinksList implements ListWrapper {
        // This declaration below of _ExtensionClassImpllinks_obj_class is to force flash compiler to include this class
        private var _extensionClassImpllinks_obj_class: org.openapitools.client.model.ExtensionClassImpllinks = null;
        [XmlElements(name="extensionClassImpllinks", type="org.openapitools.client.model.ExtensionClassImpllinks")]
        public var extensionClassImpllinks: Array = new Array();

        public function getList(): Array{
            return extensionClassImpllinks;
        }

}

}
