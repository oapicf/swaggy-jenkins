(ns swaggy-jenkins.specs.input-step-impl
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.input-step-impllinks :refer :all]
            [swaggy-jenkins.specs.string-parameter-definition :refer :all]
            )
  (:import (java.io File)))


(def input-step-impl-data
  {
   (ds/opt :_class) string?
   (ds/opt :_links) input-step-impllinks-spec
   (ds/opt :id) string?
   (ds/opt :message) string?
   (ds/opt :ok) string?
   (ds/opt :parameters) (s/coll-of string-parameter-definition-spec)
   (ds/opt :submitter) string?
   })

(def input-step-impl-spec
  (ds/spec
    {:name ::input-step-impl
     :spec input-step-impl-data}))
