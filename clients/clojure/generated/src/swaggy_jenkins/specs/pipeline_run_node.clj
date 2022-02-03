(ns swaggy-jenkins.specs.pipeline-run-node
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.pipeline-run-nodeedges :refer :all]
            )
  (:import (java.io File)))


(def pipeline-run-node-data
  {
   (ds/opt :_class) string?
   (ds/opt :displayName) string?
   (ds/opt :durationInMillis) int?
   (ds/opt :edges) (s/coll-of pipeline-run-nodeedges-spec)
   (ds/opt :id) string?
   (ds/opt :result) string?
   (ds/opt :startTime) string?
   (ds/opt :state) string?
   })

(def pipeline-run-node-spec
  (ds/spec
    {:name ::pipeline-run-node
     :spec pipeline-run-node-data}))
