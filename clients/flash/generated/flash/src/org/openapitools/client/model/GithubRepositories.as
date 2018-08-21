package org.openapitools.client.model {

import org.openapitools.client.model.GithubRepositorieslinks;
import org.openapitools.client.model.GithubRepository;

    [XmlRootNode(name="GithubRepositories")]
    public class GithubRepositories {
                [XmlElement(name="_class")]
        public var class: String = null;
                [XmlElement(name="_links")]
        public var links: GithubRepositorieslinks = NaN;
                // This declaration below of _items_obj_class is to force flash compiler to include this class
        private var _items_obj_class: Array = null;
        [XmlElementWrapper(name="items")]
        [XmlElements(name="items", type="Array")]
                public var items: Array = new Array();
                [XmlElement(name="lastPage")]
        public var lastPage: Number = 0;
                [XmlElement(name="nextPage")]
        public var nextPage: Number = 0;
                [XmlElement(name="pageSize")]
        public var pageSize: Number = 0;

    public function toString(): String {
        var str: String = "GithubRepositories: ";
        str += " (class: " + class + ")";
        str += " (links: " + links + ")";
        str += " (items: " + items + ")";
        str += " (lastPage: " + lastPage + ")";
        str += " (nextPage: " + nextPage + ")";
        str += " (pageSize: " + pageSize + ")";
        return str;
    }

}

}
