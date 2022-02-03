(ns swaggy-jenkins.specs.hudson-master-computer
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.hudson-master-computerexecutors :refer :all]
            [swaggy-jenkins.specs.label1 :refer :all]
            [swaggy-jenkins.specs.hudson-master-computermonitor-data :refer :all]
            )
  (:import (java.io File)))


(def hudson-master-computer-data
  {
   (ds/opt :_class) string?
   (ds/opt :displayName) string?
   (ds/opt :executors) (s/coll-of hudson-master-computerexecutors-spec)
   (ds/opt :icon) string?
   (ds/opt :iconClassName) string?
   (ds/opt :idle) boolean?
   (ds/opt :jnlpAgent) boolean?
   (ds/opt :launchSupported) boolean?
   (ds/opt :loadStatistics) label1-spec
   (ds/opt :manualLaunchAllowed) boolean?
   (ds/opt :monitorData) hudson-master-computermonitor-data-spec
   (ds/opt :numExecutors) int?
   (ds/opt :offline) boolean?
   (ds/opt :offlineCause) string?
   (ds/opt :offlineCauseReason) string?
   (ds/opt :temporarilyOffline) boolean?
   })

(def hudson-master-computer-spec
  (ds/spec
    {:name ::hudson-master-computer
     :spec hudson-master-computer-data}))
