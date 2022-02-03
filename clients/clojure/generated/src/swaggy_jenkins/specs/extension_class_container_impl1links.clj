(ns swaggy-jenkins.specs.extension-class-container-impl1links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.link :refer :all]
            )
  (:import (java.io File)))


(def extension-class-container-impl1links-data
  {
   (ds/opt :self) link-spec
   (ds/opt :_class) string?
   })

(def extension-class-container-impl1links-spec
  (ds/spec
    {:name ::extension-class-container-impl1links
     :spec extension-class-container-impl1links-data}))
