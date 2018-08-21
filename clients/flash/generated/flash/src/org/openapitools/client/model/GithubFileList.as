package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.GithubContent;

    public class GithubFileList implements ListWrapper {
        // This declaration below of _GithubFile_obj_class is to force flash compiler to include this class
        private var _githubFile_obj_class: org.openapitools.client.model.GithubFile = null;
        [XmlElements(name="githubFile", type="org.openapitools.client.model.GithubFile")]
        public var githubFile: Array = new Array();

        public function getList(): Array{
            return githubFile;
        }

}

}
