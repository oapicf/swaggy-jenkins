(ns swaggy-jenkins.specs.user
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def user-data
  {
   (ds/opt :_class) string?
   (ds/opt :id) string?
   (ds/opt :fullName) string?
   (ds/opt :email) string?
   (ds/opt :name) string?
   })

(def user-spec
  (ds/spec
    {:name ::user
     :spec user-data}))
