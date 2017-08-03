package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.GithubOrganization;

    public class ScmOrganisationsList implements ListWrapper {
        // This declaration below of _ScmOrganisations_obj_class is to force flash compiler to include this class
        private var _scmOrganisations_obj_class: io.swagger.client.model.ScmOrganisations = null;
        [XmlElements(name="scmOrganisations", type="io.swagger.client.model.ScmOrganisations")]
        public var scmOrganisations: Array = new Array();

        public function getList(): Array{
            return scmOrganisations;
        }

}

}
