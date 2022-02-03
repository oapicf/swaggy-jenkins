(ns swaggy-jenkins.specs.disk-space-monitor-descriptor-disk-space
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def disk-space-monitor-descriptor-disk-space-data
  {
   (ds/opt :_class) string?
   (ds/opt :timestamp) int?
   (ds/opt :path) string?
   (ds/opt :size) int?
   })

(def disk-space-monitor-descriptor-disk-space-spec
  (ds/spec
    {:name ::disk-space-monitor-descriptor-disk-space
     :spec disk-space-monitor-descriptor-disk-space-data}))
