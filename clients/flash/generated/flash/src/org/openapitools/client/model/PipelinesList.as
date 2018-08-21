package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.Pipeline;

    public class PipelinesList implements ListWrapper {
        // This declaration below of _Pipelines_obj_class is to force flash compiler to include this class
        private var _pipelines_obj_class: org.openapitools.client.model.Pipelines = null;
        [XmlElements(name="pipelines", type="org.openapitools.client.model.Pipelines")]
        public var pipelines: Array = new Array();

        public function getList(): Array{
            return pipelines;
        }

}

}
