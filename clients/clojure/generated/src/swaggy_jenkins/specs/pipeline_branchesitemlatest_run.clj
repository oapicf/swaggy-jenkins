(ns swaggy-jenkins.specs.pipeline-branchesitemlatest-run
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def pipeline-branchesitemlatest-run-data
  {
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

(def pipeline-branchesitemlatest-run-spec
  (ds/spec
    {:name ::pipeline-branchesitemlatest-run
     :spec pipeline-branchesitemlatest-run-data}))
