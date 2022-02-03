(ns swaggy-jenkins.specs.pipelinelatest-runartifacts
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def pipelinelatest-runartifacts-data
  {
   (ds/opt :name) string?
   (ds/opt :size) int?
   (ds/opt :url) string?
   (ds/opt :_class) string?
   })

(def pipelinelatest-runartifacts-spec
  (ds/spec
    {:name ::pipelinelatest-runartifacts
     :spec pipelinelatest-runartifacts-data}))
