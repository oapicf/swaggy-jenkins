(ns swaggy-jenkins.specs.pipelinelatest-run
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.pipelinelatest-runartifacts :refer :all]
            )
  (:import (java.io File)))


(def pipelinelatest-run-data
  {
   (ds/opt :artifacts) (s/coll-of pipelinelatest-runartifacts-spec)
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
   (ds/opt :_class) string?
   })

(def pipelinelatest-run-spec
  (ds/spec
    {:name ::pipelinelatest-run
     :spec pipelinelatest-run-data}))
