package io.swagger.client.model {

import io.swagger.common.ListWrapper;

    public class PipelineFolderImplList implements ListWrapper {
        // This declaration below of _PipelineFolderImpl_obj_class is to force flash compiler to include this class
        private var _pipelineFolderImpl_obj_class: io.swagger.client.model.PipelineFolderImpl = null;
        [XmlElements(name="pipelineFolderImpl", type="io.swagger.client.model.PipelineFolderImpl")]
        public var pipelineFolderImpl: Array = new Array();

        public function getList(): Array{
            return pipelineFolderImpl;
        }

}

}
