package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Link;

    public class GithubRespositoryContainerlinksList implements ListWrapper {
        // This declaration below of _GithubRespositoryContainerlinks_obj_class is to force flash compiler to include this class
        private var _githubRespositoryContainerlinks_obj_class: io.swagger.client.model.GithubRespositoryContainerlinks = null;
        [XmlElements(name="githubRespositoryContainerlinks", type="io.swagger.client.model.GithubRespositoryContainerlinks")]
        public var githubRespositoryContainerlinks: Array = new Array();

        public function getList(): Array{
            return githubRespositoryContainerlinks;
        }

}

}
