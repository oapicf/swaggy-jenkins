package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.ExtensionClassImpl;

    public class ExtensionClassContainerImpl1mapList implements ListWrapper {
        // This declaration below of _ExtensionClassContainerImpl1map_obj_class is to force flash compiler to include this class
        private var _extensionClassContainerImpl1map_obj_class: io.swagger.client.model.ExtensionClassContainerImpl1map = null;
        [XmlElements(name="extensionClassContainerImpl1map", type="io.swagger.client.model.ExtensionClassContainerImpl1map")]
        public var extensionClassContainerImpl1map: Array = new Array();

        public function getList(): Array{
            return extensionClassContainerImpl1map;
        }

}

}
