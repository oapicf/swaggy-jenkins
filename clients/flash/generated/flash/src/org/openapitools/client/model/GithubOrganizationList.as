package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.GithubOrganizationlinks;

    public class GithubOrganizationList implements ListWrapper {
        // This declaration below of _GithubOrganization_obj_class is to force flash compiler to include this class
        private var _githubOrganization_obj_class: org.openapitools.client.model.GithubOrganization = null;
        [XmlElements(name="githubOrganization", type="org.openapitools.client.model.GithubOrganization")]
        public var githubOrganization: Array = new Array();

        public function getList(): Array{
            return githubOrganization;
        }

}

}
