package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class JenkinsmodelUnlabeledLoadStatisticsList implements ListWrapper {
        // This declaration below of _jenkinsmodelUnlabeledLoadStatistics_obj_class is to force flash compiler to include this class
        private var _jenkinsmodelUnlabeledLoadStatistics_obj_class: io.swagger.client.model.JenkinsmodelUnlabeledLoadStatistics = null;
        [XmlElements(name="jenkinsmodelUnlabeledLoadStatistics", type="io.swagger.client.model.JenkinsmodelUnlabeledLoadStatistics")]
        public var jenkinsmodelUnlabeledLoadStatistics: Array = new Array();

        public function getList(): Array{
            return jenkinsmodelUnlabeledLoadStatistics;
        }

}

}
