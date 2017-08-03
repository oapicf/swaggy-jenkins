package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.User;

    public class UsersList implements ListWrapper {
        // This declaration below of _Users_obj_class is to force flash compiler to include this class
        private var _users_obj_class: io.swagger.client.model.Users = null;
        [XmlElements(name="users", type="io.swagger.client.model.Users")]
        public var users: Array = new Array();

        public function getList(): Array{
            return users;
        }

}

}
