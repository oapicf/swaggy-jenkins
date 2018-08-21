package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.GithubRepositorieslinks;
import org.openapitools.client.model.GithubRepository;

    public class GithubRepositoriesList implements ListWrapper {
        // This declaration below of _GithubRepositories_obj_class is to force flash compiler to include this class
        private var _githubRepositories_obj_class: org.openapitools.client.model.GithubRepositories = null;
        [XmlElements(name="githubRepositories", type="org.openapitools.client.model.GithubRepositories")]
        public var githubRepositories: Array = new Array();

        public function getList(): Array{
            return githubRepositories;
        }

}

}
