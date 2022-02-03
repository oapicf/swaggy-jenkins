(ns swaggy-jenkins.specs.extension-class-impl
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.extension-class-impllinks :refer :all]
            )
  (:import (java.io File)))


(def extension-class-impl-data
  {
   (ds/opt :_class) string?
   (ds/opt :_links) extension-class-impllinks-spec
   (ds/opt :classes) (s/coll-of string?)
   })

(def extension-class-impl-spec
  (ds/spec
    {:name ::extension-class-impl
     :spec extension-class-impl-data}))
