package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.GithubRepositorylinks;
import org.openapitools.client.model.GithubRepositorypermissions;

    public class GithubRepositoryList implements ListWrapper {
        // This declaration below of _GithubRepository_obj_class is to force flash compiler to include this class
        private var _githubRepository_obj_class: org.openapitools.client.model.GithubRepository = null;
        [XmlElements(name="githubRepository", type="org.openapitools.client.model.GithubRepository")]
        public var githubRepository: Array = new Array();

        public function getList(): Array{
            return githubRepository;
        }

}

}
