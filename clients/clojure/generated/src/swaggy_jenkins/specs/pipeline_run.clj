(ns swaggy-jenkins.specs.pipeline-run
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.pipeline-runartifacts :refer :all]
            )
  (:import (java.io File)))


(def pipeline-run-data
  {
   (ds/opt :_class) string?
   (ds/opt :artifacts) (s/coll-of pipeline-runartifacts-spec)
   (ds/opt :durationInMillis) int?
   (ds/opt :estimatedDurationInMillis) int?
   (ds/opt :enQueueTime) string?
   (ds/opt :endTime) string?
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

(def pipeline-run-spec
  (ds/spec
    {:name ::pipeline-run
     :spec pipeline-run-data}))
