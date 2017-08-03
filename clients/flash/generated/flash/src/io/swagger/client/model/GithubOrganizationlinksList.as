package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Link;

    public class GithubOrganizationlinksList implements ListWrapper {
        // This declaration below of _GithubOrganizationlinks_obj_class is to force flash compiler to include this class
        private var _githubOrganizationlinks_obj_class: io.swagger.client.model.GithubOrganizationlinks = null;
        [XmlElements(name="githubOrganizationlinks", type="io.swagger.client.model.GithubOrganizationlinks")]
        public var githubOrganizationlinks: Array = new Array();

        public function getList(): Array{
            return githubOrganizationlinks;
        }

}

}
