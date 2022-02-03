(ns swaggy-jenkins.specs.string-parameter-value
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def string-parameter-value-data
  {
   (ds/opt :_class) string?
   (ds/opt :name) string?
   (ds/opt :value) string?
   })

(def string-parameter-value-spec
  (ds/spec
    {:name ::string-parameter-value
     :spec string-parameter-value-data}))
