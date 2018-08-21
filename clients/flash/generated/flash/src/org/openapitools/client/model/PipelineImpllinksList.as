package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Link;

    public class PipelineImpllinksList implements ListWrapper {
        // This declaration below of _PipelineImpllinks_obj_class is to force flash compiler to include this class
        private var _pipelineImpllinks_obj_class: org.openapitools.client.model.PipelineImpllinks = null;
        [XmlElements(name="pipelineImpllinks", type="org.openapitools.client.model.PipelineImpllinks")]
        public var pipelineImpllinks: Array = new Array();

        public function getList(): Array{
            return pipelineImpllinks;
        }

}

}
