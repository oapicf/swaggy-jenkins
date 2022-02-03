(ns swaggy-jenkins.specs.branch-impllinks
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.link :refer :all]
            [swaggy-jenkins.specs.link :refer :all]
            [swaggy-jenkins.specs.link :refer :all]
            [swaggy-jenkins.specs.link :refer :all]
            )
  (:import (java.io File)))


(def branch-impllinks-data
  {
   (ds/opt :self) link-spec
   (ds/opt :actions) link-spec
   (ds/opt :runs) link-spec
   (ds/opt :queue) link-spec
   (ds/opt :_class) string?
   })

(def branch-impllinks-spec
  (ds/spec
    {:name ::branch-impllinks
     :spec branch-impllinks-data}))
