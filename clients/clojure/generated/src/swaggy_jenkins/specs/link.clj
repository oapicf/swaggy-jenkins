(ns swaggy-jenkins.specs.link
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def link-data
  {
   (ds/opt :_class) string?
   (ds/opt :href) string?
   })

(def link-spec
  (ds/spec
    {:name ::link
     :spec link-data}))
