(ns swaggy-jenkins.specs.hudson-master-computerexecutors
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.free-style-build :refer :all]
            )
  (:import (java.io File)))


(def hudson-master-computerexecutors-data
  {
   (ds/opt :currentExecutable) free-style-build-spec
   (ds/opt :idle) boolean?
   (ds/opt :likelyStuck) boolean?
   (ds/opt :number) int?
   (ds/opt :progress) int?
   (ds/opt :_class) string?
   })

(def hudson-master-computerexecutors-spec
  (ds/spec
    {:name ::hudson-master-computerexecutors
     :spec hudson-master-computerexecutors-data}))
