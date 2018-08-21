package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;

    public class FreeStyleProjecthealthReportList implements ListWrapper {
        // This declaration below of _FreeStyleProjecthealthReport_obj_class is to force flash compiler to include this class
        private var _freeStyleProjecthealthReport_obj_class: org.openapitools.client.model.FreeStyleProjecthealthReport = null;
        [XmlElements(name="freeStyleProjecthealthReport", type="org.openapitools.client.model.FreeStyleProjecthealthReport")]
        public var freeStyleProjecthealthReport: Array = new Array();

        public function getList(): Array{
            return freeStyleProjecthealthReport;
        }

}

}
