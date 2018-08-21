package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.FavoriteImpllinks;
import org.openapitools.client.model.PipelineImpl;

    public class FavoriteImplList implements ListWrapper {
        // This declaration below of _FavoriteImpl_obj_class is to force flash compiler to include this class
        private var _favoriteImpl_obj_class: org.openapitools.client.model.FavoriteImpl = null;
        [XmlElements(name="favoriteImpl", type="org.openapitools.client.model.FavoriteImpl")]
        public var favoriteImpl: Array = new Array();

        public function getList(): Array{
            return favoriteImpl;
        }

}

}
