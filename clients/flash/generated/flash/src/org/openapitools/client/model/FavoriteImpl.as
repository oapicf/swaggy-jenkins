package org.openapitools.client.model {

import org.openapitools.client.model.FavoriteImpllinks;
import org.openapitools.client.model.PipelineImpl;

    [XmlRootNode(name="FavoriteImpl")]
    public class FavoriteImpl {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="_links")]
        public var links: FavoriteImpllinks = NaN;
                [XmlElement(name="item")]
        public var item: PipelineImpl = NaN;

    public function toString(): String {
        var str: String = "FavoriteImpl: ";
        str += " (class: " + class + ")";
        str += " (links: " + links + ")";
        str += " (item: " + item + ")";
        return str;
    }

}

}
