(ns swaggy-jenkins.specs.favorite-impllinks
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.link :refer :all]
            )
  (:import (java.io File)))


(def favorite-impllinks-data
  {
   (ds/opt :self) link-spec
   (ds/opt :_class) string?
   })

(def favorite-impllinks-spec
  (ds/spec
    {:name ::favorite-impllinks
     :spec favorite-impllinks-data}))
