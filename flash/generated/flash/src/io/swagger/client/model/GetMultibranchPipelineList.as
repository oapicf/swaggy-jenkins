package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class GetMultibranchPipelineList implements ListWrapper {
        // This declaration below of _getMultibranchPipeline_obj_class is to force flash compiler to include this class
        private var _getMultibranchPipeline_obj_class: io.swagger.client.model.GetMultibranchPipeline = null;
        [XmlElements(name="getMultibranchPipeline", type="io.swagger.client.model.GetMultibranchPipeline")]
        public var getMultibranchPipeline: Array = new Array();

        public function getList(): Array{
            return getMultibranchPipeline;
        }

}

}
