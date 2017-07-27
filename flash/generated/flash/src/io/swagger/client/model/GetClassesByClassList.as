package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class GetClassesByClassList implements ListWrapper {
        // This declaration below of _getClassesByClass_obj_class is to force flash compiler to include this class
        private var _getClassesByClass_obj_class: io.swagger.client.model.GetClassesByClass = null;
        [XmlElements(name="getClassesByClass", type="io.swagger.client.model.GetClassesByClass")]
        public var getClassesByClass: Array = new Array();

        public function getList(): Array{
            return getClassesByClass;
        }

}

}
