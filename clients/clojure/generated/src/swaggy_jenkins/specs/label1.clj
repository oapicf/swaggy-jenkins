(ns swaggy-jenkins.specs.label1
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def label1-data
  {
   (ds/opt :_class) string?
   })

(def label1-spec
  (ds/spec
    {:name ::label1
     :spec label1-data}))
