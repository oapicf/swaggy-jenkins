package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.PipelineRunartifacts;

    public class PipelineRunList implements ListWrapper {
        // This declaration below of _PipelineRun_obj_class is to force flash compiler to include this class
        private var _pipelineRun_obj_class: io.swagger.client.model.PipelineRun = null;
        [XmlElements(name="pipelineRun", type="io.swagger.client.model.PipelineRun")]
        public var pipelineRun: Array = new Array();

        public function getList(): Array{
            return pipelineRun;
        }

}

}
