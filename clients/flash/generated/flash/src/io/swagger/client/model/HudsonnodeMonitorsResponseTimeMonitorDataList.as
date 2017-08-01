package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class HudsonnodeMonitorsResponseTimeMonitorDataList implements ListWrapper {
        // This declaration below of _hudsonnode_monitorsResponseTimeMonitorData_obj_class is to force flash compiler to include this class
        private var _hudsonnodeMonitorsResponseTimeMonitorData_obj_class: io.swagger.client.model.HudsonnodeMonitorsResponseTimeMonitorData = null;
        [XmlElements(name="hudsonnodeMonitorsResponseTimeMonitorData", type="io.swagger.client.model.HudsonnodeMonitorsResponseTimeMonitorData")]
        public var hudsonnodeMonitorsResponseTimeMonitorData: Array = new Array();

        public function getList(): Array{
            return hudsonnodeMonitorsResponseTimeMonitorData;
        }

}

}
