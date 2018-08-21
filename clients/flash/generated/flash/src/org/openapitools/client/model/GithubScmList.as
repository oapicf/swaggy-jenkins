package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.GithubScmlinks;

    public class GithubScmList implements ListWrapper {
        // This declaration below of _GithubScm_obj_class is to force flash compiler to include this class
        private var _githubScm_obj_class: org.openapitools.client.model.GithubScm = null;
        [XmlElements(name="githubScm", type="org.openapitools.client.model.GithubScm")]
        public var githubScm: Array = new Array();

        public function getList(): Array{
            return githubScm;
        }

}

}
