(ns swaggy-jenkins.specs.string-parameter-definition
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.string-parameter-value :refer :all]
            )
  (:import (java.io File)))


(def string-parameter-definition-data
  {
   (ds/opt :_class) string?
   (ds/opt :defaultParameterValue) string-parameter-value-spec
   (ds/opt :description) string?
   (ds/opt :name) string?
   (ds/opt :type) string?
   })

(def string-parameter-definition-spec
  (ds/spec
    {:name ::string-parameter-definition
     :spec string-parameter-definition-data}))
