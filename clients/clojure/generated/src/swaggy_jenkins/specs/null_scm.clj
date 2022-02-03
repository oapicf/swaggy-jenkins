(ns swaggy-jenkins.specs.null-scm
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def null-scm-data
  {
   (ds/opt :_class) string?
   })

(def null-scm-spec
  (ds/spec
    {:name ::null-scm
     :spec null-scm-data}))
