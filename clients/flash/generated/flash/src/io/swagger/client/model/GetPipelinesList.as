package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.SwaggyjenkinsPipeline;

    public class GetPipelinesList implements ListWrapper {
        // This declaration below of _getPipelines_obj_class is to force flash compiler to include this class
        private var _getPipelines_obj_class: io.swagger.client.model.GetPipelines = null;
        [XmlElements(name="getPipelines", type="io.swagger.client.model.GetPipelines")]
        public var getPipelines: Array = new Array();

        public function getList(): Array{
            return getPipelines;
        }

}

}
