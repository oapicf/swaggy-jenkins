(ns swaggy-jenkins.specs.computer-set
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.hudson-master-computer :refer :all]
            )
  (:import (java.io File)))


(def computer-set-data
  {
   (ds/opt :_class) string?
   (ds/opt :busyExecutors) int?
   (ds/opt :computer) (s/coll-of hudson-master-computer-spec)
   (ds/opt :displayName) string?
   (ds/opt :totalExecutors) int?
   })

(def computer-set-spec
  (ds/spec
    {:name ::computer-set
     :spec computer-set-data}))
