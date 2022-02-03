(ns swaggy-jenkins.specs.hudsonassigned-labels
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def hudsonassigned-labels-data
  {
   (ds/opt :_class) string?
   })

(def hudsonassigned-labels-spec
  (ds/spec
    {:name ::hudsonassigned-labels
     :spec hudsonassigned-labels-data}))
