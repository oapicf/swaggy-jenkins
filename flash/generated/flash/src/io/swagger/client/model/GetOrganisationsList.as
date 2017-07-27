package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.SwaggyjenkinsOrganisation;

    public class GetOrganisationsList implements ListWrapper {
        // This declaration below of _getOrganisations_obj_class is to force flash compiler to include this class
        private var _getOrganisations_obj_class: io.swagger.client.model.GetOrganisations = null;
        [XmlElements(name="getOrganisations", type="io.swagger.client.model.GetOrganisations")]
        public var getOrganisations: Array = new Array();

        public function getList(): Array{
            return getOrganisations;
        }

}

}
