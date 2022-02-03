(ns swaggy-jenkins.specs.github-repositorypermissions
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def github-repositorypermissions-data
  {
   (ds/opt :admin) boolean?
   (ds/opt :push) boolean?
   (ds/opt :pull) boolean?
   (ds/opt :_class) string?
   })

(def github-repositorypermissions-spec
  (ds/spec
    {:name ::github-repositorypermissions
     :spec github-repositorypermissions-data}))
