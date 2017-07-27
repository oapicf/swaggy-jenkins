package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.SwaggyjenkinsUser;

    public class GetUsersList implements ListWrapper {
        // This declaration below of _getUsers_obj_class is to force flash compiler to include this class
        private var _getUsers_obj_class: io.swagger.client.model.GetUsers = null;
        [XmlElements(name="getUsers", type="io.swagger.client.model.GetUsers")]
        public var getUsers: Array = new Array();

        public function getList(): Array{
            return getUsers;
        }

}

}
