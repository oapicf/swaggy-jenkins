package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.ExtensionClassImpllinks;

    public class ExtensionClassImplList implements ListWrapper {
        // This declaration below of _ExtensionClassImpl_obj_class is to force flash compiler to include this class
        private var _extensionClassImpl_obj_class: io.swagger.client.model.ExtensionClassImpl = null;
        [XmlElements(name="extensionClassImpl", type="io.swagger.client.model.ExtensionClassImpl")]
        public var extensionClassImpl: Array = new Array();

        public function getList(): Array{
            return extensionClassImpl;
        }

}

}
