(ns swaggy-jenkins.specs.hudson-master-computermonitor-data
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.swap-space-monitor-memory-usage2 :refer :all]
            [swaggy-jenkins.specs.disk-space-monitor-descriptor-disk-space :refer :all]
            [swaggy-jenkins.specs.disk-space-monitor-descriptor-disk-space :refer :all]
            [swaggy-jenkins.specs.response-time-monitor-data :refer :all]
            [swaggy-jenkins.specs.clock-difference :refer :all]
            )
  (:import (java.io File)))


(def hudson-master-computermonitor-data-data
  {
   (ds/opt :hudsonnode_monitorsSwapSpaceMonitor) swap-space-monitor-memory-usage2-spec
   (ds/opt :hudsonnode_monitorsTemporarySpaceMonitor) disk-space-monitor-descriptor-disk-space-spec
   (ds/opt :hudsonnode_monitorsDiskSpaceMonitor) disk-space-monitor-descriptor-disk-space-spec
   (ds/opt :hudsonnode_monitorsArchitectureMonitor) string?
   (ds/opt :hudsonnode_monitorsResponseTimeMonitor) response-time-monitor-data-spec
   (ds/opt :hudsonnode_monitorsClockMonitor) clock-difference-spec
   (ds/opt :_class) string?
   })

(def hudson-master-computermonitor-data-spec
  (ds/spec
    {:name ::hudson-master-computermonitor-data
     :spec hudson-master-computermonitor-data-data}))
