(ns swaggy-jenkins.specs.hudson
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.hudsonassigned-labels :refer :all]
            [swaggy-jenkins.specs.free-style-project :refer :all]
            [swaggy-jenkins.specs.all-view :refer :all]
            [swaggy-jenkins.specs.unlabeled-load-statistics :refer :all]
            [swaggy-jenkins.specs.all-view :refer :all]
            )
  (:import (java.io File)))


(def hudson-data
  {
   (ds/opt :_class) string?
   (ds/opt :assignedLabels) (s/coll-of hudsonassigned-labels-spec)
   (ds/opt :mode) string?
   (ds/opt :nodeDescription) string?
   (ds/opt :nodeName) string?
   (ds/opt :numExecutors) int?
   (ds/opt :description) string?
   (ds/opt :jobs) (s/coll-of free-style-project-spec)
   (ds/opt :primaryView) all-view-spec
   (ds/opt :quietingDown) boolean?
   (ds/opt :slaveAgentPort) int?
   (ds/opt :unlabeledLoad) unlabeled-load-statistics-spec
   (ds/opt :useCrumbs) boolean?
   (ds/opt :useSecurity) boolean?
   (ds/opt :views) (s/coll-of all-view-spec)
   })

(def hudson-spec
  (ds/spec
    {:name ::hudson
     :spec hudson-data}))
