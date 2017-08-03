package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Link;

    public class GithubRepositorieslinksList implements ListWrapper {
        // This declaration below of _GithubRepositorieslinks_obj_class is to force flash compiler to include this class
        private var _githubRepositorieslinks_obj_class: io.swagger.client.model.GithubRepositorieslinks = null;
        [XmlElements(name="githubRepositorieslinks", type="io.swagger.client.model.GithubRepositorieslinks")]
        public var githubRepositorieslinks: Array = new Array();

        public function getList(): Array{
            return githubRepositorieslinks;
        }

}

}
