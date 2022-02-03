(ns swaggy-jenkins.specs.cause-user-id-cause
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cause-user-id-cause-data
  {
   (ds/opt :_class) string?
   (ds/opt :shortDescription) string?
   (ds/opt :userId) string?
   (ds/opt :userName) string?
   })

(def cause-user-id-cause-spec
  (ds/spec
    {:name ::cause-user-id-cause
     :spec cause-user-id-cause-data}))
