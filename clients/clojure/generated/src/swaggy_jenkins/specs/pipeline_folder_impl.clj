(ns swaggy-jenkins.specs.pipeline-folder-impl
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def pipeline-folder-impl-data
  {
   (ds/opt :_class) string?
   (ds/opt :displayName) string?
   (ds/opt :fullName) string?
   (ds/opt :name) string?
   (ds/opt :organization) string?
   (ds/opt :numberOfFolders) int?
   (ds/opt :numberOfPipelines) int?
   })

(def pipeline-folder-impl-spec
  (ds/spec
    {:name ::pipeline-folder-impl
     :spec pipeline-folder-impl-data}))
