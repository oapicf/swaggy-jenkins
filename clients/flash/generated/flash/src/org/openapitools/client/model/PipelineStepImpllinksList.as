package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Link;

    public class PipelineStepImpllinksList implements ListWrapper {
        // This declaration below of _PipelineStepImpllinks_obj_class is to force flash compiler to include this class
        private var _pipelineStepImpllinks_obj_class: org.openapitools.client.model.PipelineStepImpllinks = null;
        [XmlElements(name="pipelineStepImpllinks", type="org.openapitools.client.model.PipelineStepImpllinks")]
        public var pipelineStepImpllinks: Array = new Array();

        public function getList(): Array{
            return pipelineStepImpllinks;
        }

}

}
