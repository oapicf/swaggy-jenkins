package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class GithubRepositorypermissionsList implements ListWrapper {
        // This declaration below of _GithubRepositorypermissions_obj_class is to force flash compiler to include this class
        private var _githubRepositorypermissions_obj_class: org.openapitools.client.model.GithubRepositorypermissions = null;
        [XmlElements(name="githubRepositorypermissions", type="org.openapitools.client.model.GithubRepositorypermissions")]
        public var githubRepositorypermissions: Array = new Array();

        public function getList(): Array{
            return githubRepositorypermissions;
        }

}

}
