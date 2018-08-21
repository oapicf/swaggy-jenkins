package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.User;

    public class UsersList implements ListWrapper {
        // This declaration below of _Users_obj_class is to force flash compiler to include this class
        private var _users_obj_class: org.openapitools.client.model.Users = null;
        [XmlElements(name="users", type="org.openapitools.client.model.Users")]
        public var users: Array = new Array();

        public function getList(): Array{
            return users;
        }

}

}
