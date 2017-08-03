package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.Pipeline;

    public class PipelinesList implements ListWrapper {
        // This declaration below of _Pipelines_obj_class is to force flash compiler to include this class
        private var _pipelines_obj_class: io.swagger.client.model.Pipelines = null;
        [XmlElements(name="pipelines", type="io.swagger.client.model.Pipelines")]
        public var pipelines: Array = new Array();

        public function getList(): Array{
            return pipelines;
        }

}

}
