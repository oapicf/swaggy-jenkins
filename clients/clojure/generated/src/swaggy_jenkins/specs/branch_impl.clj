(ns swaggy-jenkins.specs.branch-impl
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.string-parameter-definition :refer :all]
            [swaggy-jenkins.specs.branch-implpermissions :refer :all]
            [swaggy-jenkins.specs.branch-impllinks :refer :all]
            [swaggy-jenkins.specs.pipeline-run-impl :refer :all]
            )
  (:import (java.io File)))


(def branch-impl-data
  {
   (ds/opt :_class) string?
   (ds/opt :displayName) string?
   (ds/opt :estimatedDurationInMillis) int?
   (ds/opt :fullDisplayName) string?
   (ds/opt :fullName) string?
   (ds/opt :name) string?
   (ds/opt :organization) string?
   (ds/opt :parameters) (s/coll-of string-parameter-definition-spec)
   (ds/opt :permissions) branch-implpermissions-spec
   (ds/opt :weatherScore) int?
   (ds/opt :pullRequest) string?
   (ds/opt :_links) branch-impllinks-spec
   (ds/opt :latestRun) pipeline-run-impl-spec
   })

(def branch-impl-spec
  (ds/spec
    {:name ::branch-impl
     :spec branch-impl-data}))
