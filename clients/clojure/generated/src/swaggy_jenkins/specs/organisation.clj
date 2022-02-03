(ns swaggy-jenkins.specs.organisation
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def organisation-data
  {
   (ds/opt :_class) string?
   (ds/opt :name) string?
   })

(def organisation-spec
  (ds/spec
    {:name ::organisation
     :spec organisation-data}))
