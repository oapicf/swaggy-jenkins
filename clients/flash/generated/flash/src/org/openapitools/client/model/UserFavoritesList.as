package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.FavoriteImpl;

    public class UserFavoritesList implements ListWrapper {
        // This declaration below of _UserFavorites_obj_class is to force flash compiler to include this class
        private var _userFavorites_obj_class: org.openapitools.client.model.UserFavorites = null;
        [XmlElements(name="userFavorites", type="org.openapitools.client.model.UserFavorites")]
        public var userFavorites: Array = new Array();

        public function getList(): Array{
            return userFavorites;
        }

}

}
