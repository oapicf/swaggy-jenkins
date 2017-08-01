package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class SwaggyjenkinsOrganisationList implements ListWrapper {
        // This declaration below of _swaggyjenkinsOrganisation_obj_class is to force flash compiler to include this class
        private var _swaggyjenkinsOrganisation_obj_class: io.swagger.client.model.SwaggyjenkinsOrganisation = null;
        [XmlElements(name="swaggyjenkinsOrganisation", type="io.swagger.client.model.SwaggyjenkinsOrganisation")]
        public var swaggyjenkinsOrganisation: Array = new Array();

        public function getList(): Array{
            return swaggyjenkinsOrganisation;
        }

}

}
