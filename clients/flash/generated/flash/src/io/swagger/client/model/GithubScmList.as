package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.GithubScmlinks;

    public class GithubScmList implements ListWrapper {
        // This declaration below of _GithubScm_obj_class is to force flash compiler to include this class
        private var _githubScm_obj_class: io.swagger.client.model.GithubScm = null;
        [XmlElements(name="githubScm", type="io.swagger.client.model.GithubScm")]
        public var githubScm: Array = new Array();

        public function getList(): Array{
            return githubScm;
        }

}

}
