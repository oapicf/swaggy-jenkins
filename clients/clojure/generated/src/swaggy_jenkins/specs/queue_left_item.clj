(ns swaggy-jenkins.specs.queue-left-item
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.cause-action :refer :all]
            [swaggy-jenkins.specs.free-style-project :refer :all]
            [swaggy-jenkins.specs.free-style-build :refer :all]
            )
  (:import (java.io File)))


(def queue-left-item-data
  {
   (ds/opt :_class) string?
   (ds/opt :actions) (s/coll-of cause-action-spec)
   (ds/opt :blocked) boolean?
   (ds/opt :buildable) boolean?
   (ds/opt :id) int?
   (ds/opt :inQueueSince) int?
   (ds/opt :params) string?
   (ds/opt :stuck) boolean?
   (ds/opt :task) free-style-project-spec
   (ds/opt :url) string?
   (ds/opt :why) string?
   (ds/opt :cancelled) boolean?
   (ds/opt :executable) free-style-build-spec
   })

(def queue-left-item-spec
  (ds/spec
    {:name ::queue-left-item
     :spec queue-left-item-data}))
