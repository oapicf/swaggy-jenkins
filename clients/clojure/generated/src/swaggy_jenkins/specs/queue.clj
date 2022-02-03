(ns swaggy-jenkins.specs.queue
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.queue-blocked-item :refer :all]
            )
  (:import (java.io File)))


(def queue-data
  {
   (ds/opt :_class) string?
   (ds/opt :items) (s/coll-of queue-blocked-item-spec)
   })

(def queue-spec
  (ds/spec
    {:name ::queue
     :spec queue-data}))
