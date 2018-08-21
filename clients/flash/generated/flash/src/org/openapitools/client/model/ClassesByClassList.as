package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class ClassesByClassList implements ListWrapper {
        // This declaration below of _ClassesByClass_obj_class is to force flash compiler to include this class
        private var _classesByClass_obj_class: org.openapitools.client.model.ClassesByClass = null;
        [XmlElements(name="classesByClass", type="org.openapitools.client.model.ClassesByClass")]
        public var classesByClass: Array = new Array();

        public function getList(): Array{
            return classesByClass;
        }

}

}
