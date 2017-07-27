package io.swagger.client.model {

import io.swagger.common.ListWrapper;
import io.swagger.client.model.SwaggyjenkinsPipelineLatestRun;

    public class SwaggyjenkinsPipelineList implements ListWrapper {
        // This declaration below of _swaggyjenkinsPipeline_obj_class is to force flash compiler to include this class
        private var _swaggyjenkinsPipeline_obj_class: io.swagger.client.model.SwaggyjenkinsPipeline = null;
        [XmlElements(name="swaggyjenkinsPipeline", type="io.swagger.client.model.SwaggyjenkinsPipeline")]
        public var swaggyjenkinsPipeline: Array = new Array();

        public function getList(): Array{
            return swaggyjenkinsPipeline;
        }

}

}
