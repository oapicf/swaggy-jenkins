(ns swaggy-jenkins.specs.pipeline-step-impl
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.pipeline-step-impllinks :refer :all]
            [swaggy-jenkins.specs.input-step-impl :refer :all]
            )
  (:import (java.io File)))


(def pipeline-step-impl-data
  {
   (ds/opt :_class) string?
   (ds/opt :_links) pipeline-step-impllinks-spec
   (ds/opt :displayName) string?
   (ds/opt :durationInMillis) int?
   (ds/opt :id) string?
   (ds/opt :input) input-step-impl-spec
   (ds/opt :result) string?
   (ds/opt :startTime) string?
   (ds/opt :state) string?
   })

(def pipeline-step-impl-spec
  (ds/spec
    {:name ::pipeline-step-impl
     :spec pipeline-step-impl-data}))
