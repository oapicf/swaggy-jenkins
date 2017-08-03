package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class BodyList implements ListWrapper {
        // This declaration below of _body_obj_class is to force flash compiler to include this class
        private var _body_obj_class: io.swagger.client.model.Body = null;
        [XmlElements(name="body", type="io.swagger.client.model.Body")]
        public var body: Array = new Array();

        public function getList(): Array{
            return body;
        }

}

}
