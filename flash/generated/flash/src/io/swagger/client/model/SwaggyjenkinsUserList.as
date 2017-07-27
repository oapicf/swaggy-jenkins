package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class SwaggyjenkinsUserList implements ListWrapper {
        // This declaration below of _swaggyjenkinsUser_obj_class is to force flash compiler to include this class
        private var _swaggyjenkinsUser_obj_class: io.swagger.client.model.SwaggyjenkinsUser = null;
        [XmlElements(name="swaggyjenkinsUser", type="io.swagger.client.model.SwaggyjenkinsUser")]
        public var swaggyjenkinsUser: Array = new Array();

        public function getList(): Array{
            return swaggyjenkinsUser;
        }

}

}
