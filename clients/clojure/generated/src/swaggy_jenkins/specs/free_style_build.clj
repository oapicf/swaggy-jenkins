(ns swaggy-jenkins.specs.free-style-build
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.cause-action :refer :all]
            [swaggy-jenkins.specs.empty-change-log-set :refer :all]
            )
  (:import (java.io File)))


(def free-style-build-data
  {
   (ds/opt :_class) string?
   (ds/opt :number) int?
   (ds/opt :url) string?
   (ds/opt :actions) (s/coll-of cause-action-spec)
   (ds/opt :building) boolean?
   (ds/opt :description) string?
   (ds/opt :displayName) string?
   (ds/opt :duration) int?
   (ds/opt :estimatedDuration) int?
   (ds/opt :executor) string?
   (ds/opt :fullDisplayName) string?
   (ds/opt :id) string?
   (ds/opt :keepLog) boolean?
   (ds/opt :queueId) int?
   (ds/opt :result) string?
   (ds/opt :timestamp) int?
   (ds/opt :builtOn) string?
   (ds/opt :changeSet) empty-change-log-set-spec
   })

(def free-style-build-spec
  (ds/spec
    {:name ::free-style-build
     :spec free-style-build-data}))
