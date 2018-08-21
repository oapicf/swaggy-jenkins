package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class LinkList implements ListWrapper {
        // This declaration below of _Link_obj_class is to force flash compiler to include this class
        private var _link_obj_class: org.openapitools.client.model.Link = null;
        [XmlElements(name="link", type="org.openapitools.client.model.Link")]
        public var link: Array = new Array();

        public function getList(): Array{
            return link;
        }

}

}
