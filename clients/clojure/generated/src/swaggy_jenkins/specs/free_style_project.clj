(ns swaggy-jenkins.specs.free-style-project
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [swaggy-jenkins.specs.free-style-projectactions :refer :all]
            [swaggy-jenkins.specs.free-style-build :refer :all]
            [swaggy-jenkins.specs.free-style-build :refer :all]
            [swaggy-jenkins.specs.free-style-projecthealth-report :refer :all]
            [swaggy-jenkins.specs.free-style-build :refer :all]
            [swaggy-jenkins.specs.free-style-build :refer :all]
            [swaggy-jenkins.specs.free-style-build :refer :all]
            [swaggy-jenkins.specs.free-style-build :refer :all]
            [swaggy-jenkins.specs.null-scm :refer :all]
            )
  (:import (java.io File)))


(def free-style-project-data
  {
   (ds/opt :_class) string?
   (ds/opt :name) string?
   (ds/opt :url) string?
   (ds/opt :color) string?
   (ds/opt :actions) (s/coll-of free-style-projectactions-spec)
   (ds/opt :description) string?
   (ds/opt :displayName) string?
   (ds/opt :displayNameOrNull) string?
   (ds/opt :fullDisplayName) string?
   (ds/opt :fullName) string?
   (ds/opt :buildable) boolean?
   (ds/opt :builds) (s/coll-of free-style-build-spec)
   (ds/opt :firstBuild) free-style-build-spec
   (ds/opt :healthReport) (s/coll-of free-style-projecthealth-report-spec)
   (ds/opt :inQueue) boolean?
   (ds/opt :keepDependencies) boolean?
   (ds/opt :lastBuild) free-style-build-spec
   (ds/opt :lastCompletedBuild) free-style-build-spec
   (ds/opt :lastFailedBuild) string?
   (ds/opt :lastStableBuild) free-style-build-spec
   (ds/opt :lastSuccessfulBuild) free-style-build-spec
   (ds/opt :lastUnstableBuild) string?
   (ds/opt :lastUnsuccessfulBuild) string?
   (ds/opt :nextBuildNumber) int?
   (ds/opt :queueItem) string?
   (ds/opt :concurrentBuild) boolean?
   (ds/opt :scm) null-scm-spec
   })

(def free-style-project-spec
  (ds/spec
    {:name ::free-style-project
     :spec free-style-project-data}))
