package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.GithubRepositorieslinks;
import io.swagger.client.model.GithubRepository;

    public class GithubRepositoriesList implements ListWrapper {
        // This declaration below of _GithubRepositories_obj_class is to force flash compiler to include this class
        private var _githubRepositories_obj_class: io.swagger.client.model.GithubRepositories = null;
        [XmlElements(name="githubRepositories", type="io.swagger.client.model.GithubRepositories")]
        public var githubRepositories: Array = new Array();

        public function getList(): Array{
            return githubRepositories;
        }

}

}
