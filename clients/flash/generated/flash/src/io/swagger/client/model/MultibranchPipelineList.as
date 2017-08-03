package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class MultibranchPipelineList implements ListWrapper {
        // This declaration below of _MultibranchPipeline_obj_class is to force flash compiler to include this class
        private var _multibranchPipeline_obj_class: io.swagger.client.model.MultibranchPipeline = null;
        [XmlElements(name="multibranchPipeline", type="io.swagger.client.model.MultibranchPipeline")]
        public var multibranchPipeline: Array = new Array();

        public function getList(): Array{
            return multibranchPipeline;
        }

}

}
