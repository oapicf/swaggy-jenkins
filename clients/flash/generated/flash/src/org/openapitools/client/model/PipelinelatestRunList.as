package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.PipelinelatestRunartifacts;

    public class PipelinelatestRunList implements ListWrapper {
        // This declaration below of _PipelinelatestRun_obj_class is to force flash compiler to include this class
        private var _pipelinelatestRun_obj_class: org.openapitools.client.model.PipelinelatestRun = null;
        [XmlElements(name="pipelinelatestRun", type="org.openapitools.client.model.PipelinelatestRun")]
        public var pipelinelatestRun: Array = new Array();

        public function getList(): Array{
            return pipelinelatestRun;
        }

}

}
