package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class ResponseTimeMonitorDataList implements ListWrapper {
        // This declaration below of _ResponseTimeMonitorData_obj_class is to force flash compiler to include this class
        private var _responseTimeMonitorData_obj_class: io.swagger.client.model.ResponseTimeMonitorData = null;
        [XmlElements(name="responseTimeMonitorData", type="io.swagger.client.model.ResponseTimeMonitorData")]
        public var responseTimeMonitorData: Array = new Array();

        public function getList(): Array{
            return responseTimeMonitorData;
        }

}

}
