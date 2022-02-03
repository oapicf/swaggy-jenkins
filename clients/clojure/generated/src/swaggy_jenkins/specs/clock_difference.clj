(ns swaggy-jenkins.specs.clock-difference
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def clock-difference-data
  {
   (ds/opt :_class) string?
   (ds/opt :diff) int?
   })

(def clock-difference-spec
  (ds/spec
    {:name ::clock-difference
     :spec clock-difference-data}))
