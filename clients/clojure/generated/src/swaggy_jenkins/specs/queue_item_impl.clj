(ns swaggy-jenkins.specs.queue-item-impl
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def queue-item-impl-data
  {
   (ds/opt :_class) string?
   (ds/opt :expectedBuildNumber) int?
   (ds/opt :id) string?
   (ds/opt :pipeline) string?
   (ds/opt :queuedTime) int?
   })

(def queue-item-impl-spec
  (ds/spec
    {:name ::queue-item-impl
     :spec queue-item-impl-data}))
