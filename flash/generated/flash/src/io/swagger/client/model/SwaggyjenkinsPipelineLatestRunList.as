package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.SwaggyjenkinsPipelineLatestRunartifacts;

    public class SwaggyjenkinsPipelineLatestRunList implements ListWrapper {
        // This declaration below of _swaggyjenkinsPipeline_latestRun_obj_class is to force flash compiler to include this class
        private var _swaggyjenkinsPipelineLatestRun_obj_class: io.swagger.client.model.SwaggyjenkinsPipelineLatestRun = null;
        [XmlElements(name="swaggyjenkinsPipelineLatestRun", type="io.swagger.client.model.SwaggyjenkinsPipelineLatestRun")]
        public var swaggyjenkinsPipelineLatestRun: Array = new Array();

        public function getList(): Array{
            return swaggyjenkinsPipelineLatestRun;
        }

}

}
