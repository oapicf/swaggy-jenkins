package org.openapitools.client.model {

import org.openapitools.common.ListWrapper;
import org.openapitools.client.model.StringParameterValue;

    public class StringParameterDefinitionList implements ListWrapper {
        // This declaration below of _StringParameterDefinition_obj_class is to force flash compiler to include this class
        private var _stringParameterDefinition_obj_class: org.openapitools.client.model.StringParameterDefinition = null;
        [XmlElements(name="stringParameterDefinition", type="org.openapitools.client.model.StringParameterDefinition")]
        public var stringParameterDefinition: Array = new Array();

        public function getList(): Array{
            return stringParameterDefinition;
        }

}

}
