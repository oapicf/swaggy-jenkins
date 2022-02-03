(ns swaggy-jenkins.specs.unlabeled-load-statistics
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def unlabeled-load-statistics-data
  {
   (ds/opt :_class) string?
   })

(def unlabeled-load-statistics-spec
  (ds/spec
    {:name ::unlabeled-load-statistics
     :spec unlabeled-load-statistics-data}))
