package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Link;

    public class GithubRespositoryContainerlinksList implements ListWrapper {
        // This declaration below of _GithubRespositoryContainerlinks_obj_class is to force flash compiler to include this class
        private var _githubRespositoryContainerlinks_obj_class: org.openapitools.client.model.GithubRespositoryContainerlinks = null;
        [XmlElements(name="githubRespositoryContainerlinks", type="org.openapitools.client.model.GithubRespositoryContainerlinks")]
        public var githubRespositoryContainerlinks: Array = new Array();

        public function getList(): Array{
            return githubRespositoryContainerlinks;
        }

}

}
