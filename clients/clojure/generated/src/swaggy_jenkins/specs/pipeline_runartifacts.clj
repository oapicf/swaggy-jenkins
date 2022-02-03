(ns swaggy-jenkins.specs.pipeline-runartifacts
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def pipeline-runartifacts-data
  {
   (ds/opt :name) string?
   (ds/opt :size) int?
   (ds/opt :url) string?
   (ds/opt :_class) string?
   })

(def pipeline-runartifacts-spec
  (ds/spec
    {:name ::pipeline-runartifacts
     :spec pipeline-runartifacts-data}))
