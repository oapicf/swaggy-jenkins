package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Link;

    public class GithubRepositorieslinksList implements ListWrapper {
        // This declaration below of _GithubRepositorieslinks_obj_class is to force flash compiler to include this class
        private var _githubRepositorieslinks_obj_class: org.openapitools.client.model.GithubRepositorieslinks = null;
        [XmlElements(name="githubRepositorieslinks", type="org.openapitools.client.model.GithubRepositorieslinks")]
        public var githubRepositorieslinks: Array = new Array();

        public function getList(): Array{
            return githubRepositorieslinks;
        }

}

}
