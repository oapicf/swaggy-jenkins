package io.swagger.client.model {

import io.swagger.client.model.GithubRepositorieslinks;
import io.swagger.client.model.GithubRepository;

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
        public var lastPage: Number = NaN;
                [XmlElement(name="nextPage")]
        public var nextPage: Number = NaN;
                [XmlElement(name="pageSize")]
        public var pageSize: Number = NaN;

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
