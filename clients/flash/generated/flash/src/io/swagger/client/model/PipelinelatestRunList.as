package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.PipelinelatestRunartifacts;

    public class PipelinelatestRunList implements ListWrapper {
        // This declaration below of _PipelinelatestRun_obj_class is to force flash compiler to include this class
        private var _pipelinelatestRun_obj_class: io.swagger.client.model.PipelinelatestRun = null;
        [XmlElements(name="pipelinelatestRun", type="io.swagger.client.model.PipelinelatestRun")]
        public var pipelinelatestRun: Array = new Array();

        public function getList(): Array{
            return pipelinelatestRun;
        }

}

}
