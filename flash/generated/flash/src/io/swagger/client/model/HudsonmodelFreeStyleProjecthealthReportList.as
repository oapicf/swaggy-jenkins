package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class HudsonmodelFreeStyleProjecthealthReportList implements ListWrapper {
        // This declaration below of _hudsonmodelFreeStyleProjecthealthReport_obj_class is to force flash compiler to include this class
        private var _hudsonmodelFreeStyleProjecthealthReport_obj_class: io.swagger.client.model.HudsonmodelFreeStyleProjecthealthReport = null;
        [XmlElements(name="hudsonmodelFreeStyleProjecthealthReport", type="io.swagger.client.model.HudsonmodelFreeStyleProjecthealthReport")]
        public var hudsonmodelFreeStyleProjecthealthReport: Array = new Array();

        public function getList(): Array{
            return hudsonmodelFreeStyleProjecthealthReport;
        }

}

}
