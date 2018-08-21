package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.PipelineRunImpllinks;

    public class PipelineRunImplList implements ListWrapper {
        // This declaration below of _PipelineRunImpl_obj_class is to force flash compiler to include this class
        private var _pipelineRunImpl_obj_class: org.openapitools.client.model.PipelineRunImpl = null;
        [XmlElements(name="pipelineRunImpl", type="org.openapitools.client.model.PipelineRunImpl")]
        public var pipelineRunImpl: Array = new Array();

        public function getList(): Array{
            return pipelineRunImpl;
        }

}

}
