package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class OrganisationList implements ListWrapper {
        // This declaration below of _Organisation_obj_class is to force flash compiler to include this class
        private var _organisation_obj_class: org.openapitools.client.model.Organisation = null;
        [XmlElements(name="organisation", type="org.openapitools.client.model.Organisation")]
        public var organisation: Array = new Array();

        public function getList(): Array{
            return organisation;
        }

}

}
