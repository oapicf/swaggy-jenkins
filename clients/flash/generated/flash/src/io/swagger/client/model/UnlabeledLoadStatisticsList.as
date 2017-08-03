package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class UnlabeledLoadStatisticsList implements ListWrapper {
        // This declaration below of _UnlabeledLoadStatistics_obj_class is to force flash compiler to include this class
        private var _unlabeledLoadStatistics_obj_class: io.swagger.client.model.UnlabeledLoadStatistics = null;
        [XmlElements(name="unlabeledLoadStatistics", type="io.swagger.client.model.UnlabeledLoadStatistics")]
        public var unlabeledLoadStatistics: Array = new Array();

        public function getList(): Array{
            return unlabeledLoadStatistics;
        }

}

}
