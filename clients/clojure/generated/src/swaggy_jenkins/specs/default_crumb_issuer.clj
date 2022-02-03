(ns swaggy-jenkins.specs.default-crumb-issuer
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def default-crumb-issuer-data
  {
   (ds/opt :_class) string?
   (ds/opt :crumb) string?
   (ds/opt :crumbRequestField) string?
   })

(def default-crumb-issuer-spec
  (ds/spec
    {:name ::default-crumb-issuer
     :spec default-crumb-issuer-data}))
