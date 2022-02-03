(ns swaggy-jenkins.specs.pipeline-impllinks
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.link :refer :all]
            [swaggy-jenkins.specs.link :refer :all]
            [swaggy-jenkins.specs.link :refer :all]
            [swaggy-jenkins.specs.link :refer :all]
            )
  (:import (java.io File)))


(def pipeline-impllinks-data
  {
   (ds/opt :runs) link-spec
   (ds/opt :self) link-spec
   (ds/opt :queue) link-spec
   (ds/opt :actions) link-spec
   (ds/opt :_class) string?
   })

(def pipeline-impllinks-spec
  (ds/spec
    {:name ::pipeline-impllinks
     :spec pipeline-impllinks-data}))
