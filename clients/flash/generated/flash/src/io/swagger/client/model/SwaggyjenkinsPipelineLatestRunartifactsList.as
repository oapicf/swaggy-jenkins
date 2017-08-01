package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class SwaggyjenkinsPipelineLatestRunartifactsList implements ListWrapper {
        // This declaration below of _swaggyjenkinsPipeline_latestRunartifacts_obj_class is to force flash compiler to include this class
        private var _swaggyjenkinsPipelineLatestRunartifacts_obj_class: io.swagger.client.model.SwaggyjenkinsPipelineLatestRunartifacts = null;
        [XmlElements(name="swaggyjenkinsPipelineLatestRunartifacts", type="io.swagger.client.model.SwaggyjenkinsPipelineLatestRunartifacts")]
        public var swaggyjenkinsPipelineLatestRunartifacts: Array = new Array();

        public function getList(): Array{
            return swaggyjenkinsPipelineLatestRunartifacts;
        }

}

}
