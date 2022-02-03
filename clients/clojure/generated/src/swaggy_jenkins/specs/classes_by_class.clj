(ns swaggy-jenkins.specs.classes-by-class
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def classes-by-class-data
  {
   (ds/opt :classes) (s/coll-of string?)
   (ds/opt :_class) string?
   })

(def classes-by-class-spec
  (ds/spec
    {:name ::classes-by-class
     :spec classes-by-class-data}))
