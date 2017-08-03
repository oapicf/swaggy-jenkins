package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Link;

    public class FavoriteImpllinksList implements ListWrapper {
        // This declaration below of _FavoriteImpllinks_obj_class is to force flash compiler to include this class
        private var _favoriteImpllinks_obj_class: io.swagger.client.model.FavoriteImpllinks = null;
        [XmlElements(name="favoriteImpllinks", type="io.swagger.client.model.FavoriteImpllinks")]
        public var favoriteImpllinks: Array = new Array();

        public function getList(): Array{
            return favoriteImpllinks;
        }

}

}
