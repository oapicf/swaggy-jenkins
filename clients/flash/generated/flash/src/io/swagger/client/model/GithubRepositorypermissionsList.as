package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class GithubRepositorypermissionsList implements ListWrapper {
        // This declaration below of _GithubRepositorypermissions_obj_class is to force flash compiler to include this class
        private var _githubRepositorypermissions_obj_class: io.swagger.client.model.GithubRepositorypermissions = null;
        [XmlElements(name="githubRepositorypermissions", type="io.swagger.client.model.GithubRepositorypermissions")]
        public var githubRepositorypermissions: Array = new Array();

        public function getList(): Array{
            return githubRepositorypermissions;
        }

}

}
