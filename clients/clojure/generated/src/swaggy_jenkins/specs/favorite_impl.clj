(ns swaggy-jenkins.specs.favorite-impl
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.favorite-impllinks :refer :all]
            [swaggy-jenkins.specs.pipeline-impl :refer :all]
            )
  (:import (java.io File)))


(def favorite-impl-data
  {
   (ds/opt :_class) string?
   (ds/opt :_links) favorite-impllinks-spec
   (ds/opt :item) pipeline-impl-spec
   })

(def favorite-impl-spec
  (ds/spec
    {:name ::favorite-impl
     :spec favorite-impl-data}))
