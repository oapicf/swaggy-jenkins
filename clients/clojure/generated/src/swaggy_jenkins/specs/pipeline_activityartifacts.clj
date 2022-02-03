(ns swaggy-jenkins.specs.pipeline-activityartifacts
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def pipeline-activityartifacts-data
  {
   (ds/opt :name) string?
   (ds/opt :size) int?
   (ds/opt :url) string?
   (ds/opt :_class) string?
   })

(def pipeline-activityartifacts-spec
  (ds/spec
    {:name ::pipeline-activityartifacts
     :spec pipeline-activityartifacts-data}))
