package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.GithubOrganization;

    public class ScmOrganisationsList implements ListWrapper {
        // This declaration below of _ScmOrganisations_obj_class is to force flash compiler to include this class
        private var _scmOrganisations_obj_class: org.openapitools.client.model.ScmOrganisations = null;
        [XmlElements(name="scmOrganisations", type="org.openapitools.client.model.ScmOrganisations")]
        public var scmOrganisations: Array = new Array();

        public function getList(): Array{
            return scmOrganisations;
        }

}

}
