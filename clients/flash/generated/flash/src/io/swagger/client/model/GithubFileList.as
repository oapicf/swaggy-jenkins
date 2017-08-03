package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.GithubContent;

    public class GithubFileList implements ListWrapper {
        // This declaration below of _GithubFile_obj_class is to force flash compiler to include this class
        private var _githubFile_obj_class: io.swagger.client.model.GithubFile = null;
        [XmlElements(name="githubFile", type="io.swagger.client.model.GithubFile")]
        public var githubFile: Array = new Array();

        public function getList(): Array{
            return githubFile;
        }

}

}
