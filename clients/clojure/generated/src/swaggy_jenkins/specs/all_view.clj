(ns swaggy-jenkins.specs.all-view
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def all-view-data
  {
   (ds/opt :_class) string?
   (ds/opt :name) string?
   (ds/opt :url) string?
   })

(def all-view-spec
  (ds/spec
    {:name ::all-view
     :spec all-view-data}))
