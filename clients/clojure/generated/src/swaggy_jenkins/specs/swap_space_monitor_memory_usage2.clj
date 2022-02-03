(ns swaggy-jenkins.specs.swap-space-monitor-memory-usage2
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def swap-space-monitor-memory-usage2-data
  {
   (ds/opt :_class) string?
   (ds/opt :availablePhysicalMemory) int?
   (ds/opt :availableSwapSpace) int?
   (ds/opt :totalPhysicalMemory) int?
   (ds/opt :totalSwapSpace) int?
   })

(def swap-space-monitor-memory-usage2-spec
  (ds/spec
    {:name ::swap-space-monitor-memory-usage2
     :spec swap-space-monitor-memory-usage2-data}))
