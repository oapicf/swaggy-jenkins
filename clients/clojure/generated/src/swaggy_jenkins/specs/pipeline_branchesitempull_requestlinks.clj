(ns swaggy-jenkins.specs.pipeline-branchesitempull-requestlinks
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def pipeline-branchesitempull-requestlinks-data
  {
   (ds/opt :self) string?
   (ds/opt :_class) string?
   })

(def pipeline-branchesitempull-requestlinks-spec
  (ds/spec
    {:name ::pipeline-branchesitempull-requestlinks
     :spec pipeline-branchesitempull-requestlinks-data}))
