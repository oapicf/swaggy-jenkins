package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.FreeStyleProject;

    public class ListViewList implements ListWrapper {
        // This declaration below of _ListView_obj_class is to force flash compiler to include this class
        private var _listView_obj_class: org.openapitools.client.model.ListView = null;
        [XmlElements(name="listView", type="org.openapitools.client.model.ListView")]
        public var listView: Array = new Array();

        public function getList(): Array{
            return listView;
        }

}

}
