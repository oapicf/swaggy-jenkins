package io.swagger.client.model {

import io.swagger.client.model.HudsonmodelStringParameterValue;

    [XmlRootNode(name="HudsonmodelStringParameterDefinition")]
    public class HudsonmodelStringParameterDefinition {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="defaultParameterValue")]
        public var defaultParameterValue: HudsonmodelStringParameterValue = NaN;
                [XmlElement(name="description")]
        public var description: String = null;
                [XmlElement(name="name")]
        public var name: String = null;
                [XmlElement(name="type")]
        public var type: String = null;

    public function toString(): String {
        var str: String = "HudsonmodelStringParameterDefinition: ";
        str += " (class: " + class + ")";
        str += " (defaultParameterValue: " + defaultParameterValue + ")";
        str += " (description: " + description + ")";
        str += " (name: " + name + ")";
        str += " (type: " + type + ")";
        return str;
    }

}

}
