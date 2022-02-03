(ns swaggy-jenkins.specs.input-step-impllinks
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.link :refer :all]
            )
  (:import (java.io File)))


(def input-step-impllinks-data
  {
   (ds/opt :self) link-spec
   (ds/opt :_class) string?
   })

(def input-step-impllinks-spec
  (ds/spec
    {:name ::input-step-impllinks
     :spec input-step-impllinks-data}))
