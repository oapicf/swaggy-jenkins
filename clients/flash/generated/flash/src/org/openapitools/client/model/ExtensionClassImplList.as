package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.ExtensionClassImpllinks;

    public class ExtensionClassImplList implements ListWrapper {
        // This declaration below of _ExtensionClassImpl_obj_class is to force flash compiler to include this class
        private var _extensionClassImpl_obj_class: org.openapitools.client.model.ExtensionClassImpl = null;
        [XmlElements(name="extensionClassImpl", type="org.openapitools.client.model.ExtensionClassImpl")]
        public var extensionClassImpl: Array = new Array();

        public function getList(): Array{
            return extensionClassImpl;
        }

}

}
