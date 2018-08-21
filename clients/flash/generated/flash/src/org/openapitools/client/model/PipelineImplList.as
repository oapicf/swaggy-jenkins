package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.PipelineImpllinks;

    public class PipelineImplList implements ListWrapper {
        // This declaration below of _PipelineImpl_obj_class is to force flash compiler to include this class
        private var _pipelineImpl_obj_class: org.openapitools.client.model.PipelineImpl = null;
        [XmlElements(name="pipelineImpl", type="org.openapitools.client.model.PipelineImpl")]
        public var pipelineImpl: Array = new Array();

        public function getList(): Array{
            return pipelineImpl;
        }

}

}
