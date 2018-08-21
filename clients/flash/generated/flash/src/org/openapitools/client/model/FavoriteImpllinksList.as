package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Link;

    public class FavoriteImpllinksList implements ListWrapper {
        // This declaration below of _FavoriteImpllinks_obj_class is to force flash compiler to include this class
        private var _favoriteImpllinks_obj_class: org.openapitools.client.model.FavoriteImpllinks = null;
        [XmlElements(name="favoriteImpllinks", type="org.openapitools.client.model.FavoriteImpllinks")]
        public var favoriteImpllinks: Array = new Array();

        public function getList(): Array{
            return favoriteImpllinks;
        }

}

}
