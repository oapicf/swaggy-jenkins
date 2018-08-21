package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.PipelinelatestRun;

    public class PipelineList implements ListWrapper {
        // This declaration below of _Pipeline_obj_class is to force flash compiler to include this class
        private var _pipeline_obj_class: org.openapitools.client.model.Pipeline = null;
        [XmlElements(name="pipeline", type="org.openapitools.client.model.Pipeline")]
        public var pipeline: Array = new Array();

        public function getList(): Array{
            return pipeline;
        }

}

}
