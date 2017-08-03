package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Link;

    public class ExtensionClassImpllinksList implements ListWrapper {
        // This declaration below of _ExtensionClassImpllinks_obj_class is to force flash compiler to include this class
        private var _extensionClassImpllinks_obj_class: io.swagger.client.model.ExtensionClassImpllinks = null;
        [XmlElements(name="extensionClassImpllinks", type="io.swagger.client.model.ExtensionClassImpllinks")]
        public var extensionClassImpllinks: Array = new Array();

        public function getList(): Array{
            return extensionClassImpllinks;
        }

}

}
