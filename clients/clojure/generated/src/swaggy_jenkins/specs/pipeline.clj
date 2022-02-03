(ns swaggy-jenkins.specs.pipeline
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.pipelinelatest-run :refer :all]
            )
  (:import (java.io File)))


(def pipeline-data
  {
   (ds/opt :_class) string?
   (ds/opt :organization) string?
   (ds/opt :name) string?
   (ds/opt :displayName) string?
   (ds/opt :fullName) string?
   (ds/opt :weatherScore) int?
   (ds/opt :estimatedDurationInMillis) int?
   (ds/opt :latestRun) pipelinelatest-run-spec
   })

(def pipeline-spec
  (ds/spec
    {:name ::pipeline
     :spec pipeline-data}))
