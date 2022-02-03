(ns swaggy-jenkins.specs.pipeline-activity
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.pipeline-activityartifacts :refer :all]
            )
  (:import (java.io File)))


(def pipeline-activity-data
  {
   (ds/opt :_class) string?
   (ds/opt :artifacts) (s/coll-of pipeline-activityartifacts-spec)
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

(def pipeline-activity-spec
  (ds/spec
    {:name ::pipeline-activity
     :spec pipeline-activity-data}))
