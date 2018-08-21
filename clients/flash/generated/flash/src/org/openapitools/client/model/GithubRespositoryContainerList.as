package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.GithubRepositories;
import org.openapitools.client.model.GithubRespositoryContainerlinks;

    public class GithubRespositoryContainerList implements ListWrapper {
        // This declaration below of _GithubRespositoryContainer_obj_class is to force flash compiler to include this class
        private var _githubRespositoryContainer_obj_class: org.openapitools.client.model.GithubRespositoryContainer = null;
        [XmlElements(name="githubRespositoryContainer", type="org.openapitools.client.model.GithubRespositoryContainer")]
        public var githubRespositoryContainer: Array = new Array();

        public function getList(): Array{
            return githubRespositoryContainer;
        }

}

}
