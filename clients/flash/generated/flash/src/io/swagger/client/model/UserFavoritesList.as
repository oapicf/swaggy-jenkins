package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.FavoriteImpl;

    public class UserFavoritesList implements ListWrapper {
        // This declaration below of _UserFavorites_obj_class is to force flash compiler to include this class
        private var _userFavorites_obj_class: io.swagger.client.model.UserFavorites = null;
        [XmlElements(name="userFavorites", type="io.swagger.client.model.UserFavorites")]
        public var userFavorites: Array = new Array();

        public function getList(): Array{
            return userFavorites;
        }

}

}
