(ns swaggy-jenkins.specs.pipeline-impl
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.pipeline-impllinks :refer :all]
            )
  (:import (java.io File)))


(def pipeline-impl-data
  {
   (ds/opt :_class) string?
   (ds/opt :displayName) string?
   (ds/opt :estimatedDurationInMillis) int?
   (ds/opt :fullName) string?
   (ds/opt :latestRun) string?
   (ds/opt :name) string?
   (ds/opt :organization) string?
   (ds/opt :weatherScore) int?
   (ds/opt :_links) pipeline-impllinks-spec
   })

(def pipeline-impl-spec
  (ds/spec
    {:name ::pipeline-impl
     :spec pipeline-impl-data}))
