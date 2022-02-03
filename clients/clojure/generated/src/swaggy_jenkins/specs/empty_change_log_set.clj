(ns swaggy-jenkins.specs.empty-change-log-set
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def empty-change-log-set-data
  {
   (ds/opt :_class) string?
   (ds/opt :kind) string?
   })

(def empty-change-log-set-spec
  (ds/spec
    {:name ::empty-change-log-set
     :spec empty-change-log-set-data}))
