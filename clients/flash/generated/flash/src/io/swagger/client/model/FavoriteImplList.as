package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.FavoriteImpllinks;
import io.swagger.client.model.PipelineImpl;

    public class FavoriteImplList implements ListWrapper {
        // This declaration below of _FavoriteImpl_obj_class is to force flash compiler to include this class
        private var _favoriteImpl_obj_class: io.swagger.client.model.FavoriteImpl = null;
        [XmlElements(name="favoriteImpl", type="io.swagger.client.model.FavoriteImpl")]
        public var favoriteImpl: Array = new Array();

        public function getList(): Array{
            return favoriteImpl;
        }

}

}
