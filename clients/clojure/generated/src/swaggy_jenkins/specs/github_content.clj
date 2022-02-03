(ns swaggy-jenkins.specs.github-content
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def github-content-data
  {
   (ds/opt :name) string?
   (ds/opt :sha) string?
   (ds/opt :_class) string?
   (ds/opt :repo) string?
   (ds/opt :size) int?
   (ds/opt :owner) string?
   (ds/opt :path) string?
   (ds/opt :base64Data) string?
   })

(def github-content-spec
  (ds/spec
    {:name ::github-content
     :spec github-content-data}))
