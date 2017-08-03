package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.GithubRepositories;
import io.swagger.client.model.GithubRespositoryContainerlinks;

    public class GithubRespositoryContainerList implements ListWrapper {
        // This declaration below of _GithubRespositoryContainer_obj_class is to force flash compiler to include this class
        private var _githubRespositoryContainer_obj_class: io.swagger.client.model.GithubRespositoryContainer = null;
        [XmlElements(name="githubRespositoryContainer", type="io.swagger.client.model.GithubRespositoryContainer")]
        public var githubRespositoryContainer: Array = new Array();

        public function getList(): Array{
            return githubRespositoryContainer;
        }

}

}
