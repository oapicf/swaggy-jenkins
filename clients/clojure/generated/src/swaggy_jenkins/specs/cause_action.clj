(ns swaggy-jenkins.specs.cause-action
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.cause-user-id-cause :refer :all]
            )
  (:import (java.io File)))


(def cause-action-data
  {
   (ds/opt :_class) string?
   (ds/opt :causes) (s/coll-of cause-user-id-cause-spec)
   })

(def cause-action-spec
  (ds/spec
    {:name ::cause-action
     :spec cause-action-data}))
