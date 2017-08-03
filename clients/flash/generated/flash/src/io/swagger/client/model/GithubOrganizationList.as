package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.GithubOrganizationlinks;

    public class GithubOrganizationList implements ListWrapper {
        // This declaration below of _GithubOrganization_obj_class is to force flash compiler to include this class
        private var _githubOrganization_obj_class: io.swagger.client.model.GithubOrganization = null;
        [XmlElements(name="githubOrganization", type="io.swagger.client.model.GithubOrganization")]
        public var githubOrganization: Array = new Array();

        public function getList(): Array{
            return githubOrganization;
        }

}

}
