(ns swaggy-jenkins.specs.multibranch-pipeline
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def multibranch-pipeline-data
  {
   (ds/opt :displayName) string?
   (ds/opt :estimatedDurationInMillis) int?
   (ds/opt :latestRun) string?
   (ds/opt :name) string?
   (ds/opt :organization) string?
   (ds/opt :weatherScore) int?
   (ds/opt :branchNames) (s/coll-of string?)
   (ds/opt :numberOfFailingBranches) int?
   (ds/opt :numberOfFailingPullRequests) int?
   (ds/opt :numberOfSuccessfulBranches) int?
   (ds/opt :numberOfSuccessfulPullRequests) int?
   (ds/opt :totalNumberOfBranches) int?
   (ds/opt :totalNumberOfPullRequests) int?
   (ds/opt :_class) string?
   })

(def multibranch-pipeline-spec
  (ds/spec
    {:name ::multibranch-pipeline
     :spec multibranch-pipeline-data}))
