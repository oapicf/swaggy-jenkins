(ns swaggy-jenkins.specs.free-style-projecthealth-report
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def free-style-projecthealth-report-data
  {
   (ds/opt :description) string?
   (ds/opt :iconClassName) string?
   (ds/opt :iconUrl) string?
   (ds/opt :score) int?
   (ds/opt :_class) string?
   })

(def free-style-projecthealth-report-spec
  (ds/spec
    {:name ::free-style-projecthealth-report
     :spec free-style-projecthealth-report-data}))
