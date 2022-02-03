(ns swaggy-jenkins.specs.list-view
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.free-style-project :refer :all]
            )
  (:import (java.io File)))


(def list-view-data
  {
   (ds/opt :_class) string?
   (ds/opt :description) string?
   (ds/opt :jobs) (s/coll-of free-style-project-spec)
   (ds/opt :name) string?
   (ds/opt :url) string?
   })

(def list-view-spec
  (ds/spec
    {:name ::list-view
     :spec list-view-data}))
