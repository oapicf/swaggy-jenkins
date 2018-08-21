package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Organisation;

    public class OrganisationsList implements ListWrapper {
        // This declaration below of _Organisations_obj_class is to force flash compiler to include this class
        private var _organisations_obj_class: org.openapitools.client.model.Organisations = null;
        [XmlElements(name="organisations", type="org.openapitools.client.model.Organisations")]
        public var organisations: Array = new Array();

        public function getList(): Array{
            return organisations;
        }

}

}
