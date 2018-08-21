package org.openapitools.client.model {

import org.openapitools.client.model.StringParameterValue;

    [XmlRootNode(name="StringParameterDefinition")]
    public class StringParameterDefinition {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="defaultParameterValue")]
        public var defaultParameterValue: StringParameterValue = NaN;
                [XmlElement(name="description")]
        public var description: String = null;
                [XmlElement(name="name")]
        public var name: String = null;
                [XmlElement(name="type")]
        public var type: String = null;

    public function toString(): String {
        var str: String = "StringParameterDefinition: ";
        str += " (class: " + class + ")";
        str += " (defaultParameterValue: " + defaultParameterValue + ")";
        str += " (description: " + description + ")";
        str += " (name: " + name + ")";
        str += " (type: " + type + ")";
        return str;
    }

}

}
