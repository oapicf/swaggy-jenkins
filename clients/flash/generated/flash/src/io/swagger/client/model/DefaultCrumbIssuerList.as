package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class DefaultCrumbIssuerList implements ListWrapper {
        // This declaration below of _DefaultCrumbIssuer_obj_class is to force flash compiler to include this class
        private var _defaultCrumbIssuer_obj_class: io.swagger.client.model.DefaultCrumbIssuer = null;
        [XmlElements(name="defaultCrumbIssuer", type="io.swagger.client.model.DefaultCrumbIssuer")]
        public var defaultCrumbIssuer: Array = new Array();

        public function getList(): Array{
            return defaultCrumbIssuer;
        }

}

}
