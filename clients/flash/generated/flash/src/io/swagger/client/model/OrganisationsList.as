package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Organisation;

    public class OrganisationsList implements ListWrapper {
        // This declaration below of _Organisations_obj_class is to force flash compiler to include this class
        private var _organisations_obj_class: io.swagger.client.model.Organisations = null;
        [XmlElements(name="organisations", type="io.swagger.client.model.Organisations")]
        public var organisations: Array = new Array();

        public function getList(): Array{
            return organisations;
        }

}

}
