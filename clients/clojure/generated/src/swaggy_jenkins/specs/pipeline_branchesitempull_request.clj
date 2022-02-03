(ns swaggy-jenkins.specs.pipeline-branchesitempull-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.pipeline-branchesitempull-requestlinks :refer :all]
            )
  (:import (java.io File)))


(def pipeline-branchesitempull-request-data
  {
   (ds/opt :_links) pipeline-branchesitempull-requestlinks-spec
   (ds/opt :author) string?
   (ds/opt :id) string?
   (ds/opt :title) string?
   (ds/opt :url) string?
   (ds/opt :_class) string?
   })

(def pipeline-branchesitempull-request-spec
  (ds/spec
    {:name ::pipeline-branchesitempull-request
     :spec pipeline-branchesitempull-request-data}))
