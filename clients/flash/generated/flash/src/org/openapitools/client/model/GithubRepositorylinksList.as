package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Link;

    public class GithubRepositorylinksList implements ListWrapper {
        // This declaration below of _GithubRepositorylinks_obj_class is to force flash compiler to include this class
        private var _githubRepositorylinks_obj_class: org.openapitools.client.model.GithubRepositorylinks = null;
        [XmlElements(name="githubRepositorylinks", type="org.openapitools.client.model.GithubRepositorylinks")]
        public var githubRepositorylinks: Array = new Array();

        public function getList(): Array{
            return githubRepositorylinks;
        }

}

}
