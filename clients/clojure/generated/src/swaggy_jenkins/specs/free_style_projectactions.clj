(ns swaggy-jenkins.specs.free-style-projectactions
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def free-style-projectactions-data
  {
   (ds/opt :_class) string?
   })

(def free-style-projectactions-spec
  (ds/spec
    {:name ::free-style-projectactions
     :spec free-style-projectactions-data}))
