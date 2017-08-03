package io.swagger.client.model {

import io.swagger.client.model.FreeStyleBuild;

    [XmlRootNode(name="HudsonMasterComputerexecutors")]
    public class HudsonMasterComputerexecutors {
                [XmlElement(name="currentExecutable")]
        public var currentExecutable: FreeStyleBuild = NaN;
                [XmlElement(name="idle")]
        public var idle: Boolean = false;
                [XmlElement(name="likelyStuck")]
        public var likelyStuck: Boolean = false;
                [XmlElement(name="number")]
        public var number: Number = NaN;
                [XmlElement(name="progress")]
        public var progress: Number = NaN;
                [XmlElement(name="_class")]
        public var class: String = null;

    public function toString(): String {
        var str: String = "HudsonMasterComputerexecutors: ";
        str += " (currentExecutable: " + currentExecutable + ")";
        str += " (idle: " + idle + ")";
        str += " (likelyStuck: " + likelyStuck + ")";
        str += " (number: " + number + ")";
        str += " (progress: " + progress + ")";
        str += " (class: " + class + ")";
        return str;
    }

}

}
