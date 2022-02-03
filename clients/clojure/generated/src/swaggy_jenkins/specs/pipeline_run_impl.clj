(ns swaggy-jenkins.specs.pipeline-run-impl
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.pipeline-run-impllinks :refer :all]
            )
  (:import (java.io File)))


(def pipeline-run-impl-data
  {
   (ds/opt :_class) string?
   (ds/opt :_links) pipeline-run-impllinks-spec
   (ds/opt :durationInMillis) int?
   (ds/opt :enQueueTime) string?
   (ds/opt :endTime) string?
   (ds/opt :estimatedDurationInMillis) int?
   (ds/opt :id) string?
   (ds/opt :organization) string?
   (ds/opt :pipeline) string?
   (ds/opt :result) string?
   (ds/opt :runSummary) string?
   (ds/opt :startTime) string?
   (ds/opt :state) string?
   (ds/opt :type) string?
   (ds/opt :commitId) string?
   })

(def pipeline-run-impl-spec
  (ds/spec
    {:name ::pipeline-run-impl
     :spec pipeline-run-impl-data}))
