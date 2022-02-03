(ns swaggy-jenkins.specs.pipeline-run-impllinks
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.link :refer :all]
            [swaggy-jenkins.specs.link :refer :all]
            [swaggy-jenkins.specs.link :refer :all]
            [swaggy-jenkins.specs.link :refer :all]
            [swaggy-jenkins.specs.link :refer :all]
            )
  (:import (java.io File)))


(def pipeline-run-impllinks-data
  {
   (ds/opt :nodes) link-spec
   (ds/opt :log) link-spec
   (ds/opt :self) link-spec
   (ds/opt :actions) link-spec
   (ds/opt :steps) link-spec
   (ds/opt :_class) string?
   })

(def pipeline-run-impllinks-spec
  (ds/spec
    {:name ::pipeline-run-impllinks
     :spec pipeline-run-impllinks-data}))
