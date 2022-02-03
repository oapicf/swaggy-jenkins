(ns swaggy-jenkins.specs.generic-resource
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def generic-resource-data
  {
   (ds/opt :_class) string?
   (ds/opt :displayName) string?
   (ds/opt :durationInMillis) int?
   (ds/opt :id) string?
   (ds/opt :result) string?
   (ds/opt :startTime) string?
   })

(def generic-resource-spec
  (ds/spec
    {:name ::generic-resource
     :spec generic-resource-data}))
