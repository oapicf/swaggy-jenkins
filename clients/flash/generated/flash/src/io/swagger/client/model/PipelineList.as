package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.PipelinelatestRun;

    public class PipelineList implements ListWrapper {
        // This declaration below of _Pipeline_obj_class is to force flash compiler to include this class
        private var _pipeline_obj_class: io.swagger.client.model.Pipeline = null;
        [XmlElements(name="pipeline", type="io.swagger.client.model.Pipeline")]
        public var pipeline: Array = new Array();

        public function getList(): Array{
            return pipeline;
        }

}

}
