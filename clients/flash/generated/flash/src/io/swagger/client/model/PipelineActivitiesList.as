package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.PipelineActivity;

    public class PipelineActivitiesList implements ListWrapper {
        // This declaration below of _PipelineActivities_obj_class is to force flash compiler to include this class
        private var _pipelineActivities_obj_class: io.swagger.client.model.PipelineActivities = null;
        [XmlElements(name="pipelineActivities", type="io.swagger.client.model.PipelineActivities")]
        public var pipelineActivities: Array = new Array();

        public function getList(): Array{
            return pipelineActivities;
        }

}

}
