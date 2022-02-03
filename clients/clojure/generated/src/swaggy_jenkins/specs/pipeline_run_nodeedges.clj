(ns swaggy-jenkins.specs.pipeline-run-nodeedges
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def pipeline-run-nodeedges-data
  {
   (ds/opt :id) string?
   (ds/opt :_class) string?
   })

(def pipeline-run-nodeedges-spec
  (ds/spec
    {:name ::pipeline-run-nodeedges
     :spec pipeline-run-nodeedges-data}))
