(ns swaggy-jenkins.specs.pipeline-step-impllinks
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.link :refer :all]
            [swaggy-jenkins.specs.link :refer :all]
            )
  (:import (java.io File)))


(def pipeline-step-impllinks-data
  {
   (ds/opt :self) link-spec
   (ds/opt :actions) link-spec
   (ds/opt :_class) string?
   })

(def pipeline-step-impllinks-spec
  (ds/spec
    {:name ::pipeline-step-impllinks
     :spec pipeline-step-impllinks-data}))
