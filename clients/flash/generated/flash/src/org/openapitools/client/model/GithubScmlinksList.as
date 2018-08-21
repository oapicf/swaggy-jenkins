package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Link;

    public class GithubScmlinksList implements ListWrapper {
        // This declaration below of _GithubScmlinks_obj_class is to force flash compiler to include this class
        private var _githubScmlinks_obj_class: org.openapitools.client.model.GithubScmlinks = null;
        [XmlElements(name="githubScmlinks", type="org.openapitools.client.model.GithubScmlinks")]
        public var githubScmlinks: Array = new Array();

        public function getList(): Array{
            return githubScmlinks;
        }

}

}
