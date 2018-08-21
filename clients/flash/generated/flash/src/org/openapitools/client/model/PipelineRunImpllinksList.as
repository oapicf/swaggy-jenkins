package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Link;

    public class PipelineRunImpllinksList implements ListWrapper {
        // This declaration below of _PipelineRunImpllinks_obj_class is to force flash compiler to include this class
        private var _pipelineRunImpllinks_obj_class: org.openapitools.client.model.PipelineRunImpllinks = null;
        [XmlElements(name="pipelineRunImpllinks", type="org.openapitools.client.model.PipelineRunImpllinks")]
        public var pipelineRunImpllinks: Array = new Array();

        public function getList(): Array{
            return pipelineRunImpllinks;
        }

}

}
