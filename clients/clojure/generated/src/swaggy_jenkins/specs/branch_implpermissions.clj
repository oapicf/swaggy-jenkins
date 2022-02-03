(ns swaggy-jenkins.specs.branch-implpermissions
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def branch-implpermissions-data
  {
   (ds/opt :create) boolean?
   (ds/opt :read) boolean?
   (ds/opt :start) boolean?
   (ds/opt :stop) boolean?
   (ds/opt :_class) string?
   })

(def branch-implpermissions-spec
  (ds/spec
    {:name ::branch-implpermissions
     :spec branch-implpermissions-data}))
