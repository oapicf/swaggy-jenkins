package io.swagger.client.model {


    [XmlRootNode(name="ClassesByClass")]
    public class ClassesByClass {
                // This declaration below of _classes_obj_class is to force flash compiler to include this class
        private var _classes_obj_class: Array = null;
        [XmlElementWrapper(name="classes")]
        [XmlElements(name="classes", type="Array")]
                public var classes: Array = new Array();
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "ClassesByClass: ";
        str += " (classes: " + classes + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
