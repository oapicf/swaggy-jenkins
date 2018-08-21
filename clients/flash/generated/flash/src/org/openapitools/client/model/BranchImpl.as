package org.openapitools.client.model {

import org.openapitools.client.model.BranchImpllinks;
import org.openapitools.client.model.BranchImplpermissions;
import org.openapitools.client.model.PipelineRunImpl;
import org.openapitools.client.model.StringParameterDefinition;

    [XmlRootNode(name="BranchImpl")]
    public class BranchImpl {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="displayName")]
        public var displayName: String = null;
                [XmlElement(name="estimatedDurationInMillis")]
        public var estimatedDurationInMillis: Number = 0;
                [XmlElement(name="fullDisplayName")]
        public var fullDisplayName: String = null;
                [XmlElement(name="fullName")]
        public var fullName: String = null;
                [XmlElement(name="name")]
        public var name: String = null;
                [XmlElement(name="organization")]
        public var organization: String = null;
                // This declaration below of _parameters_obj_class is to force flash compiler to include this class
        private var _parameters_obj_class: Array = null;
        [XmlElementWrapper(name="parameters")]
        [XmlElements(name="parameters", type="Array")]
                public var parameters: Array = new Array();
                [XmlElement(name="permissions")]
        public var permissions: BranchImplpermissions = NaN;
                [XmlElement(name="weatherScore")]
        public var weatherScore: Number = 0;
                [XmlElement(name="pullRequest")]
        public var pullRequest: String = null;
                [XmlElement(name="_links")]
        public var links: BranchImpllinks = NaN;
                [XmlElement(name="latestRun")]
        public var latestRun: PipelineRunImpl = NaN;

    public function toString(): String {
        var str: String = "BranchImpl: ";
        str += " (class: " + class + ")";
        str += " (displayName: " + displayName + ")";
        str += " (estimatedDurationInMillis: " + estimatedDurationInMillis + ")";
        str += " (fullDisplayName: " + fullDisplayName + ")";
        str += " (fullName: " + fullName + ")";
        str += " (name: " + name + ")";
        str += " (organization: " + organization + ")";
        str += " (parameters: " + parameters + ")";
        str += " (permissions: " + permissions + ")";
        str += " (weatherScore: " + weatherScore + ")";
        str += " (pullRequest: " + pullRequest + ")";
        str += " (links: " + links + ")";
        str += " (latestRun: " + latestRun + ")";
        return str;
    }

}

}
