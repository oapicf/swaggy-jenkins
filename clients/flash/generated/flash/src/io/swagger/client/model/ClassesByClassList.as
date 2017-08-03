package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class ClassesByClassList implements ListWrapper {
        // This declaration below of _ClassesByClass_obj_class is to force flash compiler to include this class
        private var _classesByClass_obj_class: io.swagger.client.model.ClassesByClass = null;
        [XmlElements(name="classesByClass", type="io.swagger.client.model.ClassesByClass")]
        public var classesByClass: Array = new Array();

        public function getList(): Array{
            return classesByClass;
        }

}

}
