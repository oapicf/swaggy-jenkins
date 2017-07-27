package io.swagger.client.model {

import io.swagger.client.model.HudsonmodelStringParameterDefinition;
import io.swagger.client.model.IojenkinsblueoceanrestimplpipelineBranchImplPermissions;

    [XmlRootNode(name="IojenkinsblueoceanrestimplpipelineBranchImpl")]
    public class IojenkinsblueoceanrestimplpipelineBranchImpl {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="displayName")]
        public var displayName: String = null;
                [XmlElement(name="estimatedDurationInMillis")]
        public var estimatedDurationInMillis: Number = NaN;
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
        public var permissions: IojenkinsblueoceanrestimplpipelineBranchImplPermissions = NaN;
                [XmlElement(name="weatherScore")]
        public var weatherScore: Number = NaN;
                [XmlElement(name="pullRequest")]
        public var pullRequest: String = null;

    public function toString(): String {
        var str: String = "IojenkinsblueoceanrestimplpipelineBranchImpl: ";
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
        return str;
    }

}

}
