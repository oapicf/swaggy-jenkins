(ns swaggy-jenkins.specs.response-time-monitor-data
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def response-time-monitor-data-data
  {
   (ds/opt :_class) string?
   (ds/opt :timestamp) int?
   (ds/opt :average) int?
   })

(def response-time-monitor-data-spec
  (ds/spec
    {:name ::response-time-monitor-data
     :spec response-time-monitor-data-data}))
