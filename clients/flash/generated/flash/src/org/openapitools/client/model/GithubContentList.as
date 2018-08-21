package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class GithubContentList implements ListWrapper {
        // This declaration below of _GithubContent_obj_class is to force flash compiler to include this class
        private var _githubContent_obj_class: org.openapitools.client.model.GithubContent = null;
        [XmlElements(name="githubContent", type="org.openapitools.client.model.GithubContent")]
        public var githubContent: Array = new Array();

        public function getList(): Array{
            return githubContent;
        }

}

}
