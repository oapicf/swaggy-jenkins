(ns swaggy-jenkins.specs.extension-class-container-impl1map
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.extension-class-impl :refer :all]
            [swaggy-jenkins.specs.extension-class-impl :refer :all]
            )
  (:import (java.io File)))


(def extension-class-container-impl1map-data
  {
   (ds/opt :iojenkinsblueoceanserviceembeddedrestPipelineImpl) extension-class-impl-spec
   (ds/opt :iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl) extension-class-impl-spec
   (ds/opt :_class) string?
   })

(def extension-class-container-impl1map-spec
  (ds/spec
    {:name ::extension-class-container-impl1map
     :spec extension-class-container-impl1map-data}))
