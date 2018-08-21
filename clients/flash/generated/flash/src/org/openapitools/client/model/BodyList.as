package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class BodyList implements ListWrapper {
        // This declaration below of _body_obj_class is to force flash compiler to include this class
        private var _body_obj_class: org.openapitools.client.model.Body = null;
        [XmlElements(name="body", type="org.openapitools.client.model.Body")]
        public var body: Array = new Array();

        public function getList(): Array{
            return body;
        }

}

}
