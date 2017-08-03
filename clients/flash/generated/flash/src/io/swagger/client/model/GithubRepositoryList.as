package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.GithubRepositorylinks;
import io.swagger.client.model.GithubRepositorypermissions;

    public class GithubRepositoryList implements ListWrapper {
        // This declaration below of _GithubRepository_obj_class is to force flash compiler to include this class
        private var _githubRepository_obj_class: io.swagger.client.model.GithubRepository = null;
        [XmlElements(name="githubRepository", type="io.swagger.client.model.GithubRepository")]
        public var githubRepository: Array = new Array();

        public function getList(): Array{
            return githubRepository;
        }

}

}
