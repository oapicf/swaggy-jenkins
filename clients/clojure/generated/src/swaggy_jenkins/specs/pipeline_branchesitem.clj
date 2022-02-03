(ns swaggy-jenkins.specs.pipeline-branchesitem
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.pipeline-branchesitemlatest-run :refer :all]
            [swaggy-jenkins.specs.pipeline-branchesitempull-request :refer :all]
            )
  (:import (java.io File)))


(def pipeline-branchesitem-data
  {
   (ds/opt :displayName) string?
   (ds/opt :estimatedDurationInMillis) int?
   (ds/opt :name) string?
   (ds/opt :weatherScore) int?
   (ds/opt :latestRun) pipeline-branchesitemlatest-run-spec
   (ds/opt :organization) string?
   (ds/opt :pullRequest) pipeline-branchesitempull-request-spec
   (ds/opt :totalNumberOfPullRequests) int?
   (ds/opt :_class) string?
   })

(def pipeline-branchesitem-spec
  (ds/spec
    {:name ::pipeline-branchesitem
     :spec pipeline-branchesitem-data}))
