package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Link;

    public class GithubOrganizationlinksList implements ListWrapper {
        // This declaration below of _GithubOrganizationlinks_obj_class is to force flash compiler to include this class
        private var _githubOrganizationlinks_obj_class: org.openapitools.client.model.GithubOrganizationlinks = null;
        [XmlElements(name="githubOrganizationlinks", type="org.openapitools.client.model.GithubOrganizationlinks")]
        public var githubOrganizationlinks: Array = new Array();

        public function getList(): Array{
            return githubOrganizationlinks;
        }

}

}
