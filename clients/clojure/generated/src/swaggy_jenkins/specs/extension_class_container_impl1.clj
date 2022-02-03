(ns swaggy-jenkins.specs.extension-class-container-impl1
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.extension-class-container-impl1links :refer :all]
            [swaggy-jenkins.specs.extension-class-container-impl1map :refer :all]
            )
  (:import (java.io File)))


(def extension-class-container-impl1-data
  {
   (ds/opt :_class) string?
   (ds/opt :_links) extension-class-container-impl1links-spec
   (ds/opt :map) extension-class-container-impl1map-spec
   })

(def extension-class-container-impl1-spec
  (ds/spec
    {:name ::extension-class-container-impl1
     :spec extension-class-container-impl1-data}))
