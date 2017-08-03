package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Link;

    public class GithubScmlinksList implements ListWrapper {
        // This declaration below of _GithubScmlinks_obj_class is to force flash compiler to include this class
        private var _githubScmlinks_obj_class: io.swagger.client.model.GithubScmlinks = null;
        [XmlElements(name="githubScmlinks", type="io.swagger.client.model.GithubScmlinks")]
        public var githubScmlinks: Array = new Array();

        public function getList(): Array{
            return githubScmlinks;
        }

}

}
