package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.FreeStyleProject;

    public class ListViewList implements ListWrapper {
        // This declaration below of _ListView_obj_class is to force flash compiler to include this class
        private var _listView_obj_class: io.swagger.client.model.ListView = null;
        [XmlElements(name="listView", type="io.swagger.client.model.ListView")]
        public var listView: Array = new Array();

        public function getList(): Array{
            return listView;
        }

}

}
