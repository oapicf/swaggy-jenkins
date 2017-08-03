package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Link;

    public class GithubRepositorylinksList implements ListWrapper {
        // This declaration below of _GithubRepositorylinks_obj_class is to force flash compiler to include this class
        private var _githubRepositorylinks_obj_class: io.swagger.client.model.GithubRepositorylinks = null;
        [XmlElements(name="githubRepositorylinks", type="io.swagger.client.model.GithubRepositorylinks")]
        public var githubRepositorylinks: Array = new Array();

        public function getList(): Array{
            return githubRepositorylinks;
        }

}

}
