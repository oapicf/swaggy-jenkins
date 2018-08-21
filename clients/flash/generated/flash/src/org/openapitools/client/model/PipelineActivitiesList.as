package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.PipelineActivity;

    public class PipelineActivitiesList implements ListWrapper {
        // This declaration below of _PipelineActivities_obj_class is to force flash compiler to include this class
        private var _pipelineActivities_obj_class: org.openapitools.client.model.PipelineActivities = null;
        [XmlElements(name="pipelineActivities", type="org.openapitools.client.model.PipelineActivities")]
        public var pipelineActivities: Array = new Array();

        public function getList(): Array{
            return pipelineActivities;
        }

}

}
